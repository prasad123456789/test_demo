trigger Travel_Demo on Travel_Approval__c (after update) {
  List<Travel_Approval__c> tv=[select Department__c,Status__c,Name,Out_of_State__c from Travel_Approval__c
                      where Destination_State__c='TX'];
                      
  
    for(Travel_Approval__c travel:tv)
    {
      
        
        travel.Out_of_State__c=true;
       
    }
  
	update tv;
}