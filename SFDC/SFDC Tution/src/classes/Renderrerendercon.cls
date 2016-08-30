Public class Renderrerendercon{

 // These 2 are Boolean data types
 Public Boolean ShowpageBlockFlag{get;set;}
 Public boolean ShowpageBlockBFlag{get;set;}
  
  // Constructor Once page loaded this constructor output will display
  Public Renderrerendercon(){
   ShowpageBlockFlag = false;
   ShowpageBlockBFlag = false;
  }
  
  //Once click on show A Button this method will executes 
  Public void ShowBlockMethod(){
   ShowpageBlockFlag = true;
   ShowpageBlockBFlag = false;
  }
  
  // once click on show B method this method will executes
  Public void showBlockBmethod(){
      ShowpageBlockBFlag = true;
      ShowpageBlockFlag = false;
  }
}