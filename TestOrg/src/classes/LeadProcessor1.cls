global class LeadProcessor1 implements database.Batchable<sobject> ,database.stateful {
    global integer recordsprocessed=0;
    global integer successrecords=0;
    global integer failurerecords=0;
    public integer processed;
    global database.querylocator start(database.BatchableContext bc)
    {
         string query='select leadsource from lead' ;
        //select leadsource from lead
        return database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<Lead> scope)
{
    list<lead> updatelead=new list<lead>();
    for(lead l:scope)
    {
       l.LeadSource='Dreamforce1';
          updatelead.add(l);
    }
    //update updatelead;
    List<database.SaveResult> result=database.update( updatelead,false);
    processed =result.size();
    for(database.SaveResult sr:result)
    {
        if(sr.issuccess())
        {
            successrecords++;
        }
        else
        {
           failurerecords++; 
        }
    }
    
    
    
    
}
    global void finish(database.BatchableContext bc)
        
    {
        //AsyncApexJob a=[SELECT Id, CreatedDate, CreatedById, JobType, ApexClassId, Status, JobItemsProcessed, TotalJobItems, NumberOfErrors, CompletedDate, MethodName, ExtendedStatus, ParentJobId, LastProcessed, LastProcessedOffset FROM AsyncApexJob where id=:bc.getJobId()];
        Messaging.SingleEmailMessage email=new messaging.SingleEmailMessage();
        List<string> toaddr=new list<string>{'sirishachowdary.karuturi@gmail.com','abc@xyz.com'};
            email.setToAddresses(toaddr);
        email.setsubject('status of leadsource');
       // email.setPlainTextBody('Total items processed'+a.JobItemsProcessed+'No of errors'+a.NumberOfErrors);
        email.setPlainTextBody('Total items successed'+successrecords+'No of errors records'+failurerecords);
        email.setSenderDisplayName('GVIPL');
        list<messaging.SingleEmailMessage> msglist=new list<messaging.SingleEmailMessage>();
        msglist.add(email);
       // email.setTemplateId(param1)
            
        messaging.sendEmail(msglist);
        //try passing parameters to send email
       /* SendingEmail se=new sendingemail(a.NumberOfErrors,a.JobItemsProcessed);
        se.sendEmail();*/
        
    }

}