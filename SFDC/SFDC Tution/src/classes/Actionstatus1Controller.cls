public class Actionstatus1Controller
{    
    public boolean displayPopup {get; set;}    
   
    public void closePopup()
    {       
        displayPopup = false;   
    }    
    public void showPopup()
    {       
        displayPopup = true;   
    }   
  }