public class CustomExample {
    public string inputname{get;set;}
    public string outputname{get;set;}
    public void show()
    {
        outputname=inputname;
    }

    public static List<contact> searchForContacts(string value1,string value2)
    {
        List<contact> conlist=new list<contact>();
        conlist=[select id,Name from Contact where lastname=:value1 and MailingPostalCode=:value2];
        
        return conlist;
    }
   
}