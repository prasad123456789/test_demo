public class SOQL_Example_4 
{
    
    public static void amount()
    {
    
    List<Opportunity> opty=[select Name,StageName,Amount from Opportunity];
    List<Decimal> amount=new List<Decimal>();
        
        for(Opportunity op:opty)
        {
            if(op.StageName=='Closed Won')
            {
                amount.add(op.Amount);
            }
        }
        System.debug(amount);
    }

}