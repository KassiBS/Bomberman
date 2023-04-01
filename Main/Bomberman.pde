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
   this.colorDL = get(int(Player1.x - Player1.size/2),int(Player1.y + Player1.size/2));
   this.colorDR = get(int(Player1.x + Player1.size/2),int(Player1.y + Player1.size/2));
   this.colorTL = get(int(Player1.x - Player1.size/2),int(Player1.y - Player1.size/2));
   this.colorTR = get(int(Player1.x + Player1.size/2),int(Player1.y - Player1.size/2));
   
   this.colorD = get(int(Player1.x),int(Player1.y + Player1.size/2));
   this.colorT = get(int(Player1.x),int(Player1.y - Player1.size/2));
   this.colorL = get(int(Player1.x - Player1.size/2),int(Player1.y));
   this.colorR = get(int(Player1.x + Player1.size/2),int(Player1.y));
  }
}
