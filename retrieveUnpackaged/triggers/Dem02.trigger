trigger Dem02 on Account (after insert) {
    
     User u=[select id from User where firstname='Eric' ];
    
    Account acc=new Account();
    acc.Name='Testing Department';
    acc.Phone='123-231';
    acc.OwnerId=u.id;
    insert acc;

}