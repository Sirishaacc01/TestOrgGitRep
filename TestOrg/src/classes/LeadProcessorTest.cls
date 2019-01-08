@istest
private class LeadProcessorTest {

   @testsetup
    static void setup(){
       List<lead> leadlist=new List<lead>();

        for(integer i=0;i<200;i++)
        {
          
            lead led=new lead();
            led.FirstName ='FirstName';
            led.LastName ='LastName'+i;
            led.Company ='demo'+i;
            leadlist.add(led);

        }
        insert leadlist;  
    }
    
    
static testmethod void test()
{
   test.startTest();
    LeadProcessor lp=new LeadProcessor();
    Database.executeBatch( lp); 
    test.stopTest();
    System.assertEquals(200, [select count() from lead where Leadsource = 'Dreamforce']);
}    
    
    
}