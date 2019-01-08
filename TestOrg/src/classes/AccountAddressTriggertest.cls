@istest
public class AccountAddressTriggertest {

  
    static testmethod void testaccountaddress(){
        List<Account> acc=new List<Account>();
        Account a=new Account();
        a.Match_Billing_Address__c=True;
        a.name='Test Account';
        a.BillingPostalCode='123455';
        acc.add(a);
        insert acc;
        
      //  test.startTest();
      //  AccountAddressCheck a=new AccountAddressCheck();
        
    }

     
    
    
}