public class MyController 
{
    
     public List<Contact> cons {get;set;}
    
    public list<account> accs{get;set;}
    
    public PageReference selacc()
    {
       string getid=ApexPages.currentPage().getParameters().get('cons');
        accs=[select Id,name,(select Id,lastname from contacts) from Account where id=:getid];
        
        return null;
    }
    public List<Account> acclst { get; set; }
   public MyController()
   {
     acclst=[select id,name  from account ];

	}
}