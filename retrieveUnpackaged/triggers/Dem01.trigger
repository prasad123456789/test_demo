trigger Dem01 on Account (after insert) 
{
    
    List<Account> accounts= Trigger.new;
    Acc_Opyy.create(accounts);
}