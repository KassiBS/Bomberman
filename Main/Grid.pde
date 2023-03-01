class MakeGrid{
  float Size;
  float XCounter;
  float XLoc;
  float YCounter;
  float YLoc;
  float XCounterTop;
  float XLocTop;
  float YCounterRight;
  float YLocRight;
  float YCounterLeft;
  float YLocLeft;
  float XCounterBottom;
  float XLocBottom;
  
  MakeGrid(){
   this.Size = 25;
   this.XCounter = 0;
   this.XLoc = 50;
   this.YCounter = 0;
   this.YLoc = 50;
   this.XCounterTop = 0;
   this.XLocTop = 0;
   this.YCounterRight = 0;
   this.YLocRight = 0;
   this.YCounterLeft = 0;
   this.YLocLeft = 0;
   this.XCounterBottom = 0;
   this.XLocBottom = 0;
   
   
  }
  
  void show(){
    fill(150);
    rectMode(CORNER);
    if(this.XCounterTop < 31){
      rect(this.XLocTop, 0, this.Size, this.Size);
      XCounterTop = XCounterTop + 1;
      this.XLocTop = this.XLocTop + this.Size;
    }
    
    if(this.YCounterRight < 13){
      rect(750, YLocRight, this.Size, this.Size);
      YCounterRight = YCounterRight + 1;
      this.YLocRight = this.YLocRight + this.Size;
    }
    
    if(this.YCounterLeft < 13){
      rect(0, YLocLeft, this.Size, this.Size);
      YCounterLeft = YCounterLeft + 1;
      this.YLocLeft = this.YLocLeft + this.Size;
    }
    
    if(this.XCounterBottom < 31){
      rect(this.XLocBottom, 300, this.Size, this.Size);
      XCounterBottom = XCounterBottom + 1;
      this.XLocBottom = this.XLocBottom + this.Size;
    }
    
    if(this.YCounter < 6){
      if (this.XCounter > 15){
        this.YLoc = this.YLoc + (this.Size*2);
        this.XCounter = 0;
        this.XLoc = 0;
        this.YCounter = this.YCounter + 1;
      }
      rect(this.XLoc, this.YLoc, this.Size, this.Size);
      this.XLoc = this.XLoc + (this.Size*2);
      this.XCounter = this.XCounter + 1;
    }
    
  }
}
