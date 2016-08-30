public class Filtercontroller {
    Public List<Account> lstacc{get;set;}
    public boolean displayPopup {get; set;}  
    Public Account acc{get;set;}
    
    Public Filtercontroller(){
        //Initializa new list and query the account records
        lstacc=new list<Account>([SELECT id,name,phone,rating,type FROM Account ORDER BY Createddate DESC]); 
        system.debug('+++++++lstacc@@@@'+lstacc.size());
        acc= new Account();
    }
    
    //Filter based upon rating
    Public void getdetails(){
        lstacc=new list<Account>([SELECT id,name,phone,rating,type FROM Account WHERE rating=:acc.rating AND type=:acc.type ORDER BY Createddate DESC]); 
    }
    
    // Createe New lead close details
    public void closePopup()
    {       
        displayPopup = false;   
    }   
    // create new account open popup and fill the account records 
    public void showPopup()
    {       
        displayPopup = true;   
    }   
    
    // Save Method for account details
    Public pagereference saveaccdetails(){
        displayPopup = false;
        Insert acc;
        pageReference pg = new pageReference('/apex/FilterandNewpoup');
        pg.setRedirect(true);
        return pg;
    }
    
}