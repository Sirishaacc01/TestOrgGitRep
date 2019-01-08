public class AccountAddressCheck {
 public void checkaddress(list<account> acclist)
    {
        for(account a:acclist)
        {
            if(a.Match_Billing_Address__c==true&& a.BillingPostalCode!=null)
            {
              a.ShippingPostalCode=a.BillingPostalCode;
            }
        }
        
    }
   
}