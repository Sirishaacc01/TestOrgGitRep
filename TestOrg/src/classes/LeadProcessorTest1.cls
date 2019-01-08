@istest
public class LeadProcessorTest1 {
    static testmethod void testleads()
    {
        list<lead> leadlist=new list<lead>();
        for(integer i=0;i<100;i++)
        {
            Lead l=new lead();
            l.LastName='test name'+i;
            l.Company='test company'+i;
           l.LeadSource='test source'+i;
leadlist.add(l)  ;      }
    
    
    insert leadlist;
    test.startTest();
    LeadProcessor job=new LeadProcessor();
    database.executeBatch(job);
    test.stopTest();
    }

}