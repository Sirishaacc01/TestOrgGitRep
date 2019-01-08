public class StringArrayTest {
public static  List<String> generateStringArray(integer a)
{
    List<String> s=new List<String>();
   for(integer i=0;i<a;i++)
   {
       s.add('Test '+i);
       System.debug(s[i]);
   }
    return s;
   
}
}