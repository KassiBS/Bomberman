class Bomb{
  float x;
  float y;
  int size;
  int radius;
  boolean detonate;
  int interval = 2500;
  int timeStamp;
  
  Bomb(){
    this.x = 87.5;
    this.y = 87.5;
    // size beskriver størrelsen på bomben
    this.size = int(Grid.Size);
    // radius beskriver størrelsen på eksplosionen
    this.radius = 1;
    this.detonate = false;
  }
  
  void update(){
    //if statement tjekker om bomben er sprunget
    if(this.detonate == false){
      fill(0);
      circle(this.x,this.y,this.size);
    }
    //if statement detonerer bomben, ved at tjekke om tiden er gået
    //hvis if statement er true sætter den detonate = true
    if(millis() - this.timeStamp > interval){
      this.detonate = true;
      this.timeStamp = millis();
    }
    
  }
  
}
