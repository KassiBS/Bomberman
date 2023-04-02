class Enemy{
  int colorD;
  int colorT;
  int colorR;
  int colorL;
  
  int vx;
  int vy;
  float size;
  float x;
  float y;
  
  int eColorR;
  int eColorG;
  int eColorB;
  
  Enemy(){
    this.size = 20;
    this.y = Grid.Size + 37.5;
    this.x = 37.5;
    this.vy = 0;
    this.vx = 0;
    this.eColorR = 240;
    this.eColorG = 137;
    this.eColorB = 19;
  }
  
  void show(){
    rectMode(CENTER);
    noStroke();
    fill(this.eColorR,eColorG,eColorB);
    circle(this.x,this.y,this.size);
    stroke(0);
  }
  
  void checkColor(){
    
  }
  
  void update(){
    this.x += this.vx;
    this.y += this.vy;
  }
}
