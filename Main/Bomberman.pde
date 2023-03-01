class Bomberman{
  float x;
  float y;
  float size;
  
  Bomberman(){
    this.x = 37.5;
    this.y = 37.5;
    this.size = 20;
    this.v = 25;
  }
  void show(){
    rectMode(CENTER);
    rect(this.x,this.y,this.size,this.size);
  }
  
  void update(){
    
  }
}
