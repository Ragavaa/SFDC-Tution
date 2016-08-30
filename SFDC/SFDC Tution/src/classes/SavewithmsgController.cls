public with sharing class SavewithmsgController{
    Public string firstname{get;set;}
    Public string lastname{get;set;}
    Public list<contact> lstcon{get;set;}

    Public void savedetails(){
        try{
           lstcon=new list<contact>([SELECT id,name FROM Contact WHERE FirstName =:firstname AND Lastname =:lastname]);
           Contact con = new contact();
           con.firstname =firstname;
           con.lastname =lastname;
           lstcon.add(con);
           insert lstcon;
       }
       catch(Exception ex){
           ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.Error,'Sample Error Message'));
       }
    }
}