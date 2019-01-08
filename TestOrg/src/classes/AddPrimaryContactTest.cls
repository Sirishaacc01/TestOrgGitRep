@istest
public class AddPrimaryContactTest {
    
   
    
   @istest  static void setup()
    {
        List<account> accountlist1=new list<account>();
        for(integer i=0;i<50;i++)
        {
           
            accountlist1.add(new Account(BillingState = 'CA', name = 'Test'+i));
           /* account a=new account();
            a.name='first list account'+i;
            a.BillingCity='NY';
            accountlist1.add(a);*/
        }
       
      
        for(integer j=0;j<50;j++)
        {
           
            accountlist1.add(new Account(BillingState = 'NY', name = 'Test'+j));
        }
        insert accountlist1;
        
    
    
        contact c=new contact();
        c.LastName='Unique';
    insert c;
        
        string state='CA';
        
        AddPrimaryContact apc=new AddPrimaryContact(c,state);
        
        test.startTest();
         system.enqueueJob(apc);
        test.stopTest();
        
     // system.assertEquals(50, [select count() from account where BillingCity='CA']);
  
    }
    

}