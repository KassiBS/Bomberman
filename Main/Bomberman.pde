class Bomberman{
  // Alle variabler der bliver brugt i klassen
  float x;
  float y;
  float size;
  float v;
  
  Bomberman(){
    //Beskriver placeringen på player
    this.x = 37.5;
    this.y = 37.5;
    
    //Størrelse på player
    this.size = 20;
    //Hastigheden på player
    this.v = 25;
  }
  void show(){
    //Bestemmer startplaceringen på player
    rectMode(CENTER);
    rect(this.x,this.y,this.size,this.size);
  }
  
  void update(){
    
  }
}
