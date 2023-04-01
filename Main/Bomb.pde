class Bomb{
  float x;
  float y;
  int size;
  int radiusMax;
  int radius;
  int radiusL;
  int radiusR;
  int radiusT;
  int radiusD;
  boolean detonate;
  boolean exploded = false;
  int timeStamp;
  int interval;
  int nyInterval;
  int nyTimeStamp;
  int temp1 = 0;
  
  Bomb(){
    this.x = Player1.x;
    this.y = Player1.y;
    // size beskriver størrelsen på bomben
    this.size = int(Grid.Size);
    // radiusMax beskriver den maximale størrelse på explosionen
    this.radiusMax = 1;
    //radius for de individuelle sider hvor, R = right, L = left, T = top, D = down
    this.radiusR = 0;
    this.radiusL = 0;
    this.radiusT = 0;
    this.radiusD = 0;
    this.timeStamp = millis();
    this.interval = 2000;
    this.nyInterval = 500;
    this.detonate = false;
  }
  
  void spawn(){
    fill(0);
    noStroke();
    circle(this.x,this.y,this.size);
    stroke(0);
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
                  this.x = Grid.Size * (i+1) + Grid.Size/2 + 0.5;
                  this.y = Grid.Size * (j+1) + Grid.Size/2 + 0.5;
                }
              }
            }
           }
          }
       }
    //if statement tjekker om bomben er detoneret
    if(this.detonate == true){
      //if statement tjekker om temp er større end 1, det gør at den kun kører 1 gang
      if(temp1 < 1){
        this.nyTimeStamp = millis();
        //print(this.nyTimeStamp);
        temp1 = 1;
        //print(temp1);
      }
      noStroke();
      fill(245, 146, 76);
      rectMode(CENTER);
      //laver blast radius for midten
      rect(this.x,this.y,this.size,this.size);
      //laver siderne af blast radius for x-aksen til højre
      rectMode(CORNER);
      rect(this.x + this.size/2,this.y- this.size/2,this.size * this.radiusR,this.size);
      //laver siderne af blast radius for x-aksen til venstre
      rect( this.x - this.size/2,this.y - this.size/2,-this.size * this.radiusL,this.size);
      //laver siderne af blast radius for y-aksen ned
      rect(this.x - this.size/2,this.y+ this.size/2,this.size ,this.size* this.radiusD);
      //laver siderne af blast radius for x-aksen til venstre
      rect( this.x - this.size/2,this.y - this.size/2,this.size ,-this.size*this.radiusT);
      
      stroke(0);
      //print(" BANG ");
      //if statement tjekker om tiden er gået og de-spawner bomben
      if(millis() - this.nyTimeStamp > this.nyInterval) {
        //print("færdig");
        this.exploded = true;
      }     
    }
  }

}
