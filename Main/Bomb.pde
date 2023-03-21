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
    //if statement tjekker om bomben er sprunget
      fill(0);
      circle(this.x,this.y,this.size);
    //if statement detonerer bomben, ved at tjekke om millis() - timestamp er større end intervallet
    //hvis if statement er true sætter den detonate = true
    if(millis() - this.timeStamp > this.interval){
      detonate = true;
      timeStamp = millis();
    }
    //If statements tjekker hvilken tile player er tættest på og spawner en bombe på den tile
      for(int i = 0; i<29; i++){
        for(int j = 0; j<11; j++){
           if(this.x > Grid.Size * (1+i)){
            if(this.x < Grid.Size * (2+i)){
              if(this.y > Grid.Size * (1+j)){
                if(this.y < Grid.Size * (2+j)){
                  this.x = Grid.Size * (i+1) + Grid.Size/2;
                  this.y = Grid.Size * (j+1) + Grid.Size/2;
                }
              }
            }
           }
          }
       }
  }
  
}
