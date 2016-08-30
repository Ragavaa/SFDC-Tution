public with sharing class AccountSetupUploadFormext{
     public blob csvfileaccsetupupload{ get; set; }
     public string csvaccset{ get; set; }
     public String[] csvFileLines{get;set;}
     Public List<Contact> conlst{get;set;}
     public String ProjectId {get;set;}
     
     public AccountSetupUploadFormext(ApexPages.StandardController controller) {
         csvFileLines = new String[]{};
         conlst= new list<contact>();
         ProjectId = ApexPages.CurrentPage().getparameters().get('id');
     }
     
     public void AccountSetupUpload(){
       try{
           csvaccset = csvfileaccsetupupload.toString();
           csvFileLines = csvaccset.split('\n'); 
            
           for(Integer i=1;i<csvFileLines.size();i++){
               Contact conobj = new Contact() ;
               string[] csvRecordData = csvFileLines[i].split(',');
               conobj.lastname = csvRecordData[0] ;             
               conobj.Phone = csvRecordData[1];
               conobj.Email = csvRecordData[2];  
               conobj.accountid=ProjectId; 
               conlst.add(conobj);   
           }
        insert conlst;
        }
        catch (Exception e)
        {
            ApexPages.Message errorMessage = new ApexPages.Message(ApexPages.severity.ERROR,'An error has occured while importin data Please make sure input csv file is correct');
            ApexPages.addMessage(errorMessage);
        }  
  }
}