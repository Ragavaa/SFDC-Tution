Public with sharing class actionpollerController{
Public  Integer seconds{get;set;}
  Public actionpollerController(){
   seconds = 0;
  }
  Public void CounterMethod(){
    seconds = seconds + 5;
  }
}