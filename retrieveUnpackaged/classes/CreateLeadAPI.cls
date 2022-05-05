@RESTResource(urlMapping='/CreateLead/')
global class CreateLeadAPI {
    @HTTPPost
    global static String creatingLeadRecord()
    {
        String fName,lName,comp;
        String fieldName,fieldValue;
        
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        
        String jsonBody =req.requestBody.toString();
        JSONParser parser=JSON.createParser(jsonBody);
        
       /* System.debug('Body is'+arr);*/
        
       
        while(parser.nextToken()!=null){
            if(parser.getCurrentToken()!=JSONToken.END_OBJECT)
            {
               fieldName=parser.getCurrentName();
               fieldValue=parser.getText();
                if(fieldName=='FirstName')
                {
                    fName=fieldValue;
                }
                else if(fieldName=='LastName')
                {
                 lName=fieldValue;   
                }
                  else if(fieldName=='company')
                {
                 comp=fieldValue;   
                }
            }
        }
       
       
        Lead l=new Lead(firstName=fName,lastName=lName,company=comp);
        insert l;
         return l.id;
    }

}