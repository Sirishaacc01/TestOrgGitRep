public class ContactAndLeadSearch {

    public static List<List< SObject>> searchContactsAndLeads(string name)
    {
        list<list<sobject>> list1=[find :name in ALL FIELDS returning contact(firstname,lastname),lead(firstname,lastname)];
        
        return list1;
    }
}