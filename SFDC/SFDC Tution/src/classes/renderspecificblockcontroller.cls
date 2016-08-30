public class renderspecificblockcontroller {
    Public List<account> acclst{get;set;}
    Public list<contact> lstcon{get;set;}
    Public boolean accdet{get;set;}
    Public boolean condet{get;set;}
    
    Public renderspecificblockcontroller(){
     
    }
    
    Public void showaccdetails(){
        acclst=new List<Account>([SELECT id,name,phone FROM Account]);
        accdet =true;
       // condet=true;
    }
    
    Public void showcondetails(){
        lstcon= new list<contact>([SELECT id,name,phone FROM Contact]);
        condet=true;
        accdet =false;
    }
}