public class sampleAccountTest {
    
    public static list<account> acclist;
        public sampleAccountTest()
    {
        acclist=[select id,name from account order by createdDate limit 5];
    }
    public static void updateAccountDescription()
    {try
    {
         for(account a:acclist)
         {
             a.description='HeritageAccount';
             update a;
         }
    }
     catch(exception e)
     {
         system.debug('error'+e.getMessage());
     }
    }
    }