public class AddPrimaryContact  implements Queueable {
    private String stateabb;
    private contact c;
public  AddPrimaryContact(contact contacts,String state)
{
    this.c=contacts;
    this.stateabb=state;
}
    public void execute(Queueablecontext context)
    {
        List<account> accountlist=[select id ,name,BillingState	 from account where BillingState =:stateabb limit 200];
        
        List<contact> conlist=new list<contact>();
        
        for(account acc:accountlist)
            {
               contact con=this.c.clone(false,false,false,false);
                con.AccountId=acc.id;
                conlist.add(con);         
                
            }
        insert conlist;
    }
    
}