class Bomberman{
  // Alle variabler der bliver brugt i klassen
  float x;
  float y;
  float size;
  float v;
  boolean health = true;
  
  Bomberman(){
    //Beskriver placeringen på player
    this.x = 37.5;
    this.y = 37.5;
    
    //Størrelse på player
    this.size = 20;
    //Hastigheden på player
    this.v = 2;
  }
  void show(){
    //Bestemmer startplaceringen på player
    rectMode(CENTER);
    rect(this.x,this.y,this.size,this.size);
  }
  
  void update(){
    //tjekker om health er lig med true
    if(health == true){
      //Note: Har fikset rectMode(CENTER)
      rectMode(CENTER);
      rect(this.x,this.y,this.size,this.size);
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
}
