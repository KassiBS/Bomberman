class Victory{
  boolean Check;
  boolean WinCheck;
  
  Victory(){
    this.Check = false; 
    this.WinCheck = false;
  }
  
  void show(){
    if(this.WinCheck == true){
      println("VICTORY WOOOHOOO");
    }
  }
}
