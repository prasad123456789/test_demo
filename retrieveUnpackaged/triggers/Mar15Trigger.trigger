trigger Mar15Trigger on Account (before insert,before update) {
   
   /* Account a=Trigger.new[0];
    a.Name=a.Name+' Limited';
    a.AccountNumber='2345 5432 1234';*/
    Account a = new Account(Name='Test Trigger');
    insert a;
   

}