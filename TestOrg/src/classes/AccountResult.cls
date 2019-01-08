public class AccountResult {
public static account a;
public static account a1;
  public static void foundResultForAccount(string name1,string description1)
  {
      try
      {
          a=new account();
          a.Description=description1;
          a1=new account();
          a1.Name=name1;
          a1.Description=description1;
          list<account> acclist=new list<account>{a,a1};
           Database.SaveResult[] result= Database.insert(acclist);  
          for(database.SaveResult sr:result)
          {if(sr.issuccess())
          {
            system.debug('success records'+sr.getid());
           }
           else
            {
             for(database.Error er: sr.geterrors()){
         
       system.debug('error code'+er.getstatuscode());  
                     
     }
     
          
      }
}
      }
      catch(exception e)
      {
          system.debug('error'+e.getMessage());
      }
      
  }
  }