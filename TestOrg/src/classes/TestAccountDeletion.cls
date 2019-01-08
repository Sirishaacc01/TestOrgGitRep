@istest
public class TestAccountDeletion {
   @istest static void testdeleteaccountwithopportunitiy()
   {
account a=new account(name='testrelatedopp');
       insert a;
 Opportunity opp=new Opportunity(name=a.Name,accountid=a.Id,stagename='Qualification',closedate=system.today().addmonths(1));
       insert opp;
       
     /*  test.startTest();
      database.DeleteResult result=database.delete(a,false);
       test.stopTest();
       system.assert(!result.isSuccess());
       system.assert(result.getErrors().size()>0);
       system.assertEquals('can not delete opp which have related account', result.getErrors()[0].getmessage());*/
       
           
       
       

       
   }
     

}