public class Acc_Opyy {
    
    public static void create(List<Account> accounts)
    {
       //create list opportunities 
       List<Opportunity> optylist=new List<Opportunity>();
        //take one by one account from list of accounts.
        for(Account a : accounts)
        {
            	
                Opportunity op=new Opportunity();
                op.Name=a.Name;
                op.StageName='Prospecting';
                op.CloseDate=System.today()+15;
                op.AccountId=a.id;
                optylist.add(op);
            
        }
         insert optylist;
    }  


}