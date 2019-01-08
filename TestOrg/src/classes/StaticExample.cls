public class StaticExample {

    
    public static integer num;
    public static string name;
    public static final decimal pi=3.14;//constant declaration using final key worjd
    static
    {
        system.debug('123');
        
    }
    
    public static void input()
    {
        num=10;
        system.debug('num'+num);
    }
    public static void accept(string num)
    {
        name=num;
     //i=10;
     ////satic varaible cant be used in instant method
        
    }
    
}