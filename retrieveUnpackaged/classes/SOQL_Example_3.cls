public class SOQL_Example_3 
{
    
    public static void rating()
    {
       
        List<Account> accounts =[select Id,Name,Phone,Rating from Account];
        List<Account> mylist=new List<Account>();
        for(Account a:accounts)
        {
             
            if(a.Rating=='Hot')
            {
                mylist.add(a);
            }
           
            
        }
         System.debug(mylist);
    }

}