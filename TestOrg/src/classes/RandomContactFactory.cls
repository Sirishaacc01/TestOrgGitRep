public  class RandomContactFactory {

    public static list<contact> generateRandomContacts(integer a,string b)
    {
        List<contact> conlist =new List<contact>();
       
        for(integer i=0;i<a;i++)
        {
             contact c=new contact();
            c.FirstName='Test'+i;
            c.LastName=b;
           conlist.add(c);
           
        }
        
        
        return conlist;
        
    }
}