public class SOQL_Example_2 
{
    
    public static void nameslist()
    {
        
        List<Account> accounts=[select ID,Name,Phone from Account];
        
        List<String> names=new List<String>();
        for(Account a:accounts)
        {
        names.add(a.Name); 
        }
        System.debug(names); 
    }

}