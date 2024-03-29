import java.util.Arrays;

class Bricks {
  float Size;
  int[] grid;
  float[] xLoc;
  float[] yLoc;
  float[] BrickNum;
  int Counter;
  
  Bricks(){
    this.Size = 25;
    this.Counter = 0;
    
    //laver 100 pladser i xLoc og yLoc
    this.xLoc = new float[100];
    this.yLoc = new float[100];
    //holder styr på hvilke pladser der er taget
    this.BrickNum = new float[100];
    
    //giver arrayet 246 pladser og sætter alle false
    this.grid = new int[246];
    Arrays.fill(this.grid, 0);
    
    //for loop der tilfældigt laver 100 af de 246 til true
    for (int n = 0; n < 100; n++){
      float r = random(-0.499, 246.499);
      round(r);
      int r2 = int(r);
      if (this.grid[r2] == 0) {
        this.grid[r2] = 1;
      } else {
          n = n - 1;
      }
    }
  }
  
  void show(){
    //spawner blocks på alle de 100 true pladser
    for (int n2 = 0; n2 < 246; n2++){
      //tjekker om n er mindre end mængden af i rækken
      if (n2 < 27){
        if (this.grid[n2] == 1){
          //spawner blocken på positionen
          fill(200);
          rectMode(CORNER);
          rect(this.Size * n2 + (this.Size * 3), this.Size, this.Size, this.Size);
          this.xLoc[this.Counter] = this.Size * n2 + (this.Size * 3);
          this.yLoc[this.Counter] = this.Size;
          this.BrickNum[this.Counter] = n2;
          this.Counter = this.Counter + 1;
        }  
        if (this.grid[n2] == 2 || this.grid[n2] == 5){
          //laver dem der skal være grønne til grøn
          noStroke();
          fill(18, 201, 67);
          rectMode(CORNER);
          rect(this.Size * n2 + (this.Size * 3), this.Size, this.Size, this.Size);
          this.xLoc[this.Counter] = this.Size * n2 + (this.Size * 3);
          this.yLoc[this.Counter] = this.Size;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        } 
        if (this.grid[n2] == 3){
          //laver power up
          noStroke();
          fill(255, 255, 0);
          rectMode(CORNER);
          rect(this.Size * n2 + (this.Size * 3), this.Size, this.Size, this.Size);
          this.xLoc[this.Counter] = this.Size * n2 + (this.Size * 3);
          this.yLoc[this.Counter] = this.Size;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }  
        if (this.grid[n2] == 4){
          //laver power up
          noStroke();
          fill(46, 19, 7);
          rectMode(CORNER);
          rect(this.Size * n2 + (this.Size * 3), this.Size, this.Size, this.Size);
          this.xLoc[this.Counter] = this.Size * n2 + (this.Size * 3);
          this.yLoc[this.Counter] = this.Size;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        } 
      }
      
      //tjekker om n er lige med eller større end rækken før og tjekker om n er mindre end mængden af i rækken
      if (n2 >= 27 && n2 < 27 + 14){
        if (this.grid[n2] == 1){
          //spawner block samme måde som før, bortset fra at der minuses med mængden af blocks i rækken før, og den spawner en række under
          fill(200);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27) * 2) + (this.Size * 3), this.Size * 2, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27) * 2) + (this.Size * 3);
          this.yLoc[this.Counter] = this.Size * 2;
          this.BrickNum[this.Counter] = n2;
          this.Counter = this.Counter + 1;
        }  
        if (this.grid[n2] == 2 || this.grid[n2] == 5){
          noStroke();
          fill(18, 201, 67);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27) * 2) + (this.Size * 3), this.Size * 2, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27) * 2) + (this.Size * 3);
          this.yLoc[this.Counter] = this.Size * 2;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }  
        if (this.grid[n2] == 3){
          noStroke();
          fill(255, 255, 0);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27) * 2) + (this.Size * 3), this.Size * 2, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27) * 2) + (this.Size * 3);
          this.yLoc[this.Counter] = this.Size * 2;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        } 
        if (this.grid[n2] == 4){
          noStroke();
          fill(46, 19, 7);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27) * 2) + (this.Size * 3), this.Size * 2, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27) * 2) + (this.Size * 3);
          this.yLoc[this.Counter] = this.Size * 2;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }  
      }
      if (n2 >= 27 + 14 && n2 < 27 + 14 + 29){
        if (this.grid[n2] == 1){
          fill(200);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14)) + this.Size, this.Size * 3, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 3;
          this.BrickNum[this.Counter] = n2;
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 2 || this.grid[n2] == 5){
          noStroke();
          fill(18, 201, 67);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14)) + this.Size, this.Size * 3, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 3;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 3){
          noStroke();
          fill(255, 255, 0);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14)) + this.Size, this.Size * 3, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 3;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 4){
          noStroke();
          fill(46, 19, 7);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14)) + this.Size, this.Size * 3, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 3;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
      }
      if (n2 >= 27 + 14 + 29 && n2 < 27 + 14 + 29 + 15){
        if (this.grid[n2] == 1){
          fill(200);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29) * 2) + this.Size, this.Size * 4, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 4;
          this.BrickNum[this.Counter] = n2;
          this.Counter = this.Counter + 1;
        }  
        if (this.grid[n2] == 2 || this.grid[n2] == 5){
          noStroke();
          fill(18, 201, 67);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29) * 2) + this.Size, this.Size * 4, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 4;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }  
        if (this.grid[n2] == 3){
          noStroke();
          fill(255, 255, 0);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29) * 2) + this.Size, this.Size * 4, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 4;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }  
        if (this.grid[n2] == 4){
          noStroke();
          fill(46, 19, 7);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29) * 2) + this.Size, this.Size * 4, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 4;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }  
      }
      if (n2 >= 27 + 14 + 29 + 15 && n2 < 27 + 14 + 29 + 15 + 29){
        if (this.grid[n2] == 1){
          fill(200);
          rectMode(CORNER);rect((this.Size * (n2 - 27 - 14 - 29 - 15)) + this.Size, this.Size * 5, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 5;
          this.BrickNum[this.Counter] = n2;
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 2 || this.grid[n2] == 5){
          noStroke();
          fill(18, 201, 67);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15)) + this.Size, this.Size * 5, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 5;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 3){
          noStroke();
          fill(255, 255, 0);
          rectMode(CORNER);rect((this.Size * (n2 - 27 - 14 - 29 - 15)) + this.Size, this.Size * 5, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 5;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 4){
          noStroke();
          fill(46, 19, 7);
          rectMode(CORNER);rect((this.Size * (n2 - 27 - 14 - 29 - 15)) + this.Size, this.Size * 5, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 5;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
      }
      if (n2 >= 27 + 14 + 29 + 15 + 29 && n2 < 27 + 14 + 29 + 15 + 29 + 15){
        if (this.grid[n2] == 1){
          fill(200);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29) * 2) + this.Size, this.Size * 6, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 6;
          this.BrickNum[this.Counter] = n2;
          this.Counter = this.Counter + 1;
        } 
        if (this.grid[n2] == 2 || this.grid[n2] == 5){
          noStroke();
          fill(18, 201, 67);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29) * 2) + this.Size, this.Size * 6, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 6;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        } 
        if (this.grid[n2] == 3){
          noStroke();
          fill(255, 255, 0);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29) * 2) + this.Size, this.Size * 6, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 6;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 4){
          noStroke();
          fill(46, 19, 7);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29) * 2) + this.Size, this.Size * 6, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 6;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        } 
      }
      if (n2 >= 27 + 14 + 29 + 15 + 29 + 15 && n2 < 27 + 14 + 29 + 15 + 29 + 15 + 29){
        if (this.grid[n2] == 1){
          fill(200);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15)) + this.Size, this.Size * 7, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 7;
          this.BrickNum[this.Counter] = n2;
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 2 || this.grid[n2] == 5){
          noStroke();
          fill(18, 201, 67);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15)) + this.Size, this.Size * 7, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 7;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 3){
          noStroke();
          fill(255, 255, 0);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15)) + this.Size, this.Size * 7, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 7;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 4){
          noStroke();
          fill(46, 19, 7);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15)) + this.Size, this.Size * 7, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 7;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
      }
      if (n2 >= 27 + 14 + 29 + 15 + 29 + 15 + 29 && n2 < 27 + 14 + 29 + 15 + 29 + 15 + 29 + 15){
        if (this.grid[n2] == 1){
          fill(200);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size, this.Size * 8, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 8;
          this.BrickNum[this.Counter] = n2;
          this.Counter = this.Counter + 1;
        }  
        if (this.grid[n2] == 2 || this.grid[n2] == 5){
          noStroke();
          fill(18, 201, 67);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size, this.Size * 8, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 8;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 3){
          noStroke();
          fill(255, 255, 0);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size, this.Size * 8, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 8;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        } 
        if (this.grid[n2] == 4){
          noStroke();
          fill(46, 19, 7);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size, this.Size * 8, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 8;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        } 
      }
      if (n2 >= 27 + 14 + 29 + 15 + 29 + 15 + 29 + 15 && n2 < 27 + 14 + 29 + 15 + 29 + 15 + 29 + 15 + 29){
        if (this.grid[n2] == 1){
          fill(200);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size, this.Size * 9, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 9;
          this.BrickNum[this.Counter] = n2;
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 2 || this.grid[n2] == 5){
          noStroke();
          fill(18, 201, 67);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size, this.Size * 9, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 9;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 3){
          noStroke();
          fill(255, 255, 0);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size, this.Size * 9, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 9;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 4){
          noStroke();
          fill(46, 19, 7);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size, this.Size * 9, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 9;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
      }
      if (n2 >= 27 + 14 + 29 + 15 + 29 + 15 + 29 + 15 + 29 && n2 < 27 + 14 + 29 + 15 + 29 + 15 + 29 + 15 + 29 + 15){
        if (this.grid[n2] == 1){
          fill(200);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size, this.Size * 10, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 10;
          this.BrickNum[this.Counter] = n2;
          this.Counter = this.Counter + 1;
        }  
        if (this.grid[n2] == 2 || this.grid[n2] == 5){
          noStroke();
          fill(18, 201, 67);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size, this.Size * 10, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 10;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 3){
          noStroke();
          fill(255, 255, 0);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size, this.Size * 10, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 10;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        } 
        if (this.grid[n2] == 4){
          noStroke();
          fill(46, 19, 7);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size, this.Size * 10, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size;
          this.yLoc[this.Counter] = this.Size * 10;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }  
      }
      if (n2 >= 27 + 14 + 29 + 15 + 29 + 15 + 29 + 15 + 29 + 15 && n2 < 27 + 14 + 29 + 15 + 29 + 15 + 29 + 15 + 29 + 15 + 29){
        if (this.grid[n2] == 1){
          fill(200);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size, this.Size * 11, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 11;
          this.BrickNum[this.Counter] = n2;
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 2 || this.grid[n2] == 5){
          noStroke();
          fill(18, 201, 67);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size, this.Size * 11, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 11;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 3){
          noStroke();
          fill(255, 255, 0);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size, this.Size * 11, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 11;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
        if (this.grid[n2] == 4){
          noStroke();
          fill(46, 19, 7);
          rectMode(CORNER);
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size, this.Size * 11, this.Size, this.Size);
          this.xLoc[this.Counter] = (this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size;
          this.yLoc[this.Counter] = this.Size * 11;
          this.BrickNum[this.Counter] = n2;
          stroke(0);
          this.Counter = this.Counter + 1;
        }
      }
    }
    this.Counter = 0;
  } 
}
  
