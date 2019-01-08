public class ContactSearch {
    public static  List<contact> conlist;
    public static List<contact> searchForContacts(string name1,string name2)
    {
        try
        {
        conlist=[select id,name from contact where lastname=:name1 and MailingPostalCode=:name2];
       // conlist.get(0);
         system.debug('conlist'+conlist);
        }
        catch(exception e)
        {
            system.debug('error'+e.getMessage());
        }
        return conlist;
    }
   Public static List<List<sobject>> searchContactsAndLeads(string a)
   {
       List<List<sobject>> conleadlist=[Find 'name:a' in ALL Fields returning contact(firstname,lastname)	,lead(firstname,lastname)] ;
       
       
      
       return conleadlist;
   }
        
        
    
    
    
    
    
    
    
}