@istest
public class TestRestrictContactByName {
    
    @istest static void testcontactlastname()
    {
       contact c=new contact();
        c.lastname='INVALIDNAME';
        
       /*  test.startTest();
       database.SaveResult result=database.insert(c);
       test.stopTest();
       system.assert(!result.isSuccess());
       system.assert(result.getErrors().size()>0);
       system.assertEquals('can not insert a contcat wth last name invalid', result.getErrors()[0].getmessage());
*/
    }
    
    

}