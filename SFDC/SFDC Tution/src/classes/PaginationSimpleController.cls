public class PaginationSimpleController
{    
    private integer totalRecs = 0;     
    private integer index = 0;
    private integer blockSize = 5;         
    
    public PaginationSimpleController()
    {
        totalRecs = [select count() from Account];        
    }    
    
    public List<Account> getMemb() 
    {
        List<Account> membs = Database.Query('SELECT Name,phone FROM Account LIMIT :blockSize OFFSET :index');
        System.debug('Values are ' + membs.size());
        return membs;
    }    
    
    public void beginning()
    {
        index = 0;
    }
    
    public void previous()
    {
        index = index - blockSize;
    }
    
    public void next()
    {
        index = index + blockSize;
    }

    public void end()
    {
        index = totalrecs - math.mod(totalRecs,blockSize);
    }        
    
    public boolean getprev()
    {
        if(index == 0)
        return true;
        else
        return false;
    }  
    
    public boolean getnxt()
    {
        if((index + blockSize) > totalRecs)
        return true;
        else
        return false;
    }         
}