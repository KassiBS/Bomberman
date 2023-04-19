class Enemy{
  int colorD;
  int colorT;
  int colorR;
  int colorL;
  
  float v;
  float vx;
  float vy;
  float size;
  float x;
  float y;
  
  float xSpawn;
  float ySpawn;
  
  boolean health;
  
  int eColorR;
  int eColorG;
  int eColorB;
  
  float checkSize;
  
  Enemy(){
    this.size = 20;
    this.health = true;
    this.v = 1;
    this.vy = 0;
    this.vx = 0;
    this.eColorR = 240;
    this.eColorG = 137;
    this.eColorB = 19;
    
  }
  
  void show(){
    //viser enemy på kanvas
    rectMode(CENTER);
    noStroke();
    fill(this.eColorR,eColorG,eColorB);
    circle(this.x,this.y,this.size);
    stroke(0);
  }
  
  void checkColor(){
   //tjekker farve rundt omkring Enemy
   this.colorD = get(int(this.x),int(this.y + this.checkSize )+2);
   this.colorT = get(int(this.x),int(this.y - this.checkSize )+2);
   this.colorL = get(int(this.x - this.checkSize+2),int(this.y));
   this.colorR = get(int(this.x + this.checkSize+2),int(this.y));
  }
  
  void update(){
    //opdatere enemy's placering
    this.x += this.vx;
    this.y += this.vy;
  }
}
