class Enemy{
  int colorD;
  int colorT;
  int colorR;
  int colorL;
  
  int v;
  float size;
  float x;
  float y;
  
  int eColorR;
  int eColorG;
  int eColorB;
  
  Enemy(){
    this.size = 20;
    this.y = 37.5;
    this.x = 37.5;
    this.eColorR = 1;
    this.eColorG = 1;
    this.eColorB = 1;
  }
  
  void show(){
    rectMode(CENTER);
    fill(this.eColorR,eColorG,eColorB);
    rect(this.x,this.y,this.size,this.size);
  }
  
  void checkColor(){
    
  }
  
  void update(){
    
  }
}
