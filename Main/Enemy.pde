class Enemy{
  int colorD;
  int colorT;
  int colorR;
  int colorL;
  
  int v;
  float size;
  float x;
  float y;
  
  boolean health;
  
  int eColorR;
  int eColorG;
  int eColorB;
  
  Enemy(){
    this.size = 20;
    this.y = 2*37.5;
    this.x = 37.5;
    this.v = 0;
    this.eColorR = 240;
    this.eColorG = 137;
    this.eColorB = 19;
  }
  
  void show(){
    fill(this.eColorR,eColorG,eColorB);
    noStroke();
    circle(this.x,this.y,this.size);
    stroke(0);
    
  }
  
  void checkColor(){
    this.colorD = get(int(this.x),int(this.y + Grid.Size/2));
    this.colorT = get(int(this.x),int(this.y - Grid.Size/2));
    this.colorL = get(int(this.x - Grid.Size/2),int(this.y));
    this.colorR = get(int(this.x + Grid.Size/2),int(this.y));
    print(this.colorL);
  }
  
  void update(){
    this.x += this.v;
  }
}
