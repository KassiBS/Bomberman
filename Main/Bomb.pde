class Bomb{
  float x;
  float y;
  int size;
  int radius;
  boolean detonate;
  int timeStamp;
  int interval;
  
  Bomb(){
    this.x = Player1.x;
    this.y = Player1.y;
    // size beskriver størrelsen på bomben
    this.size = int(Grid.Size);
    // radius beskriver størrelsen på eksplosionen
    this.radius = 1;
    timeStamp = millis();
    interval = 2000;
    detonate = false;
  }
  
  void spawn(){
    ; 
    //if statement tjekker om bomben er sprunget
      fill(0);
      circle(this.x,this.y,this.size);
    //if statement detonerer bomben, ved at tjekke om millis() - timestamp er større end intervallet
    //hvis if statement er true sætter den detonate = true
    if(millis() - this.timeStamp > this.interval){
      detonate = true;
      timeStamp = millis();
    }
    
  }
  
}
