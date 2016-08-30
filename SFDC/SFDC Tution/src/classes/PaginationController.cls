public class PaginationController{
    public ApexPages.StandardSetController con {
        get {
                if(con == null) {
                    con = new ApexPages.StandardSetController(Database.getQueryLocator([Select Id, Name,Phone FROM Account Order By Name limit 100])); 
                    con.setPageSize(5);                      
                }
                return con;
        }
        set;
    }
    
    public List<Account> getlistMember(){
        return (List<Account>)con.getRecords();
    }
    
    public Boolean hasNext {
        get {
                return con.getHasNext();
            }
        set;
    }
   
    public Boolean hasPrevious {
        get {
            return con.getHasPrevious();
        }
        set;
    }
   
    public Integer pageNumber {
        get {
            return con.getPageNumber();
        }
        set;
    }
   
    public void first() {
        con.first();
    }
   
    public void last() {
        con.last();
    }

    public void previous() {
        con.previous();
    }
    
    public void next() {
        con.next();
    }
  
    public void cancel() {
        con.cancel();
    }        
}