class MakeGrid{
  float Size = 25;
  float Counter;
  float XLoc;
  float YLoc;
  float XLocTop;
  float YLocRight;
  float YLocLeft;
  float XLocBottom;
  
  MakeGrid(){
   this.Size = 25;
   this.Counter = 0;
   this.XLoc = 50;
   this.YLoc = 50;
   this.XLocTop = 0;
   this.YLocRight = 0;
   this.YLocLeft = 0;
   this.XLocBottom = 0;
   
   
  }
 
  void show(){
    fill(150);
    rectMode(CORNER);
    
    for (int i = 0; i < 31; i++){
      rect(this.XLocTop, 0, this.Size, this.Size);
      this.XLocTop = this.XLocTop + this.Size;
    }
    this.XLocTop = 0;
     
    
    for (int j = 0; j < 13; j++){
      rect(750, YLocRight, this.Size, this.Size);
      this.YLocRight = this.YLocRight + this.Size;
    }
    this.YLocRight = 0;
    
    
    for (int h = 0; h < 13; h++){
      rect(0, YLocLeft, this.Size, this.Size);
      this.YLocLeft = this.YLocLeft + this.Size;
    }
    this.YLocLeft = 0;
    
    for (int k = 0; k < 31; k++){
      rect(this.XLocBottom, 300, this.Size, this.Size);
      this.XLocBottom = this.XLocBottom + this.Size;
    }
    this.XLocBottom = 0;
    
    
    
    
    
    for (int l = 0; l < 90; l++){
      rect(this.XLoc, this.YLoc, this.Size, this.Size);
      this.XLoc = this.XLoc + (this.Size*2);
      Counter = Counter + 1;
      if (Counter > 13){
        this.XLoc = 50;
        this.YLoc = this.YLoc + (this.Size*2);
        this.Counter = 0;
      }
    }
    this.XLoc = 50;
    this.YLoc = 50;
    this.Counter = 0;
    
    
    
  }
  

}
