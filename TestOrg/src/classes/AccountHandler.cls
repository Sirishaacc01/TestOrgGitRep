public class AccountHandler {
    
   public static Account a;
    
    public static account insertNewAccount(string value)
    {
        if(value!=null)
        {
            try
        {
           
             a =new account();
            a.name=value;
            insert a;
            
          
        }
        
        catch(DmlException e)
        {
          system.debug('error'+e.getMessage());
            return null;
        }
        }
        else
        {
            return null;
        }
        
        return a;
    }

}