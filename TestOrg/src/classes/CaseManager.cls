@RestResource(urlMapping='/cases/*')
global with sharing class CaseManager {
    @HttpGet
    global static case getCaseByID()
    {
        RestRequest request=RestContext.request;
        string caseID=request.requestURI.substring(request.requestURI.lastIndexof('/')+1);
        case result=[select CaseNumber ,subject,status,origin,Priority From case where id=:caseID];
        
        return result;
    }
    
    @HttpPost
    
    global static ID createcase(string subject ,string status,string origin,string priority)
    {
        case c=new case (Subject=subject,Status=status,Origin=origin,Priority=priority);
        insert c;
        return c.ID;
        
    }
    
    @HttpDelete
        global  static void deletecase()
        {
           RestRequest request=Restcontext.request;
          string caseID=  request.requestURI.substring(request.requestURI.lastindexof('/')+1);
            case thiscase=[select id from case where id=:caseID];
            
            delete  thiscase;           
        }
      
    @Httpput
    global static ID upsertcase(string subject,string status,string origin,string priority,string id)
    {
        case c1=new case(Subject=subject,Status=status,Origin=origin,Priority=priority,ID=id);
        upsert c1;
        return c1.ID;
    }
    
    @HttpPatch
    global static ID updateCaseFields()
    {
        RestRequest request=Restcontext.request;
        string caseID=request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        Case thisCase = [SELECT Id FROM Case WHERE Id = :caseId];
        // Deserialize the JSON string into name-value pairs
        Map<String, Object> params = (Map<String, Object>)JSON.deserializeUntyped(request.requestbody.tostring());
        // Iterate through each parameter field and value
        for(String fieldName : params.keySet()) {
            // Set the field and value on the Case sObject
            thisCase.put(fieldName, params.get(fieldName));
        }
        update thisCase;
        return thisCase.Id;
        
        
    }
    
    	
        
        
        
        
        
}