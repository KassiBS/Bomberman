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
    this.v = 2;
  }
  void show(){
    //Bestemmer startplaceringen på player
    rectMode(CENTER);
    rect(this.x,this.y,this.size,this.size);
  }
  
  void update(){
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
    
    // if statements stopper player når den rammer muren
    if(this.x < 0 + Grid.Size){
      this.x = 0 + Grid.Size;
    }
    if(this.x > width - this.size-Grid.Size){
      this.x = width - this.size-Grid.Size;
    }
    if(this.y < 0 + Grid.Size){
      this.y = 0 + Grid.Size;
    }
    if(this.y > height - this.size-Grid.Size){
      this.y = height - this.size-Grid.Size;
    }
    
  }
}
