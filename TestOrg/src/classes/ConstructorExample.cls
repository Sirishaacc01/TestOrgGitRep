public class ConstructorExample {
integer i;
List<account> acclist;
    public ConstructorExample(){
        i=10;
        acclist=[select id,name from account limit 1];
        system.debug('I was called from constructor');
        system.debug('value of i'+ i);
        system.debug('list'+acclist);
    }
    static 
    {
        system.debug('i was called from static');
    }
    
    
}