public class UpdateAccount {

    public void updateacc(list<account> acclist)
    {
        for(account a:acclist)
        {
            a.Type='other';
        }
    }
    public void changeaccount(list<account> acclist)
    {
        for(account a:acclist)
        {system.debug('account'+a);
            a.BillingCountry='India';
        }
    }
}