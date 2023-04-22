class Victory{
  boolean Check;
  boolean WinCheck;
  
  Victory(){
    this.Check = false; 
    this.WinCheck = false;
  }
  
  void show(){
    if(this.WinCheck == true){
      fill(0);
      rect(0, 0, 2000, 2000);
      fill(255);
      textAlign(CENTER,CENTER);
      textSize(200);
      text("VICTORY", width/2, height/2);
    }
    if(Player1.health == false){
      fill(0);
      rect(0, 0, 2000, 2000);
      fill(255, 0, 0);
      textAlign(CENTER,CENTER);
      textSize(200);
      text("DEFEAT", width/2, height/2);
    }
  }
}
