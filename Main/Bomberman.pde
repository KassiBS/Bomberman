class Bomberman{
  // Alle variabler der bliver brugt i klassen
  float x;
  float y;
  float size;
  float v;
  boolean health = true;
  int bombNr;
  int bombPlaced;
  
  int colorDR;
  int colorDL;
  int colorTR;
  int colorTL;
  
  int colorD;
  int colorT;
  int colorR;
  int colorL;
  
  Bomberman(){
    //Beskriver placeringen på player
    this.x = 37.5;
    this.y = 37.5;
    
    //Størrelse på player
    this.size = 20;
    //Hastigheden på player
    this.v = 1;
    //Hvor meget bomber bomberman har plads til
    this.bombNr = 1;
    //hvor mange bomber bomberman har placeret
    this.bombPlaced = 0;
  }
  void show(){
    //Bestemmer startplaceringen på player
    rectMode(CENTER);
    rect(this.x,this.y,this.size,this.size);
  }
  
  void update(){
    //print(this.x);
    //print(" "+this.y);
      //Note: Har fikset rectMode(CENTER)
    if (Player1.health == true){
      rectMode(CENTER);
      fill(150, 234, 255);
      noStroke();
      rect(this.x,this.y,this.size,this.size);
      stroke(0);
      //tjekker om der er en tast der er trykket ned
      if (keyPressed){
        //Alle if statements tjekker hvilken tast der bliver trykket på
        //Afhængig om hvilken vej der bliver trykket trækkes eller lægges hastigheden til enten x eller y koordinatet
          if(key == 'w' || key == 'W'){
            this.y = this.y - this.v;
          }
          if(key == 's' || key == 'S'){
            this.y = this.y + this.v;
          }
          if(key == 'a' || key == 'A'){
            this.x = this.x - this.v;
          }
          if(key == 'd' || key == 'D'){
            this.x = this.x + this.v;
          }
      } 
    }
  }
  
  void colorCheck(){
   this.colorDL = get(int(this.x - this.size/2)+1,int(this.y + this.size/2)+1);
   this.colorDR = get(int(this.x + this.size/2)+1,int(this.y + this.size/2)+1);
   this.colorTL = get(int(this.x - this.size/2)+1,int(this.y - this.size/2)+1);
   this.colorTR = get(int(this.x + this.size/2)+1,int(this.y - this.size/2)+1);
   print(this.colorD);
   
   this.colorD = get(int(this.x)+1,int(this.y + this.size/2)+1);
   this.colorT = get(int(this.x)+1,int(this.y - this.size/2)+1);
   this.colorL = get(int(this.x - this.size/2)+1,int(this.y)+1);
   this.colorR = get(int(this.x + this.size/2)+1,int(this.y)+1);
  }
}
