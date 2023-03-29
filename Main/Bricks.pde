import java.util.Arrays;

class Bricks {
  float Size;
  boolean[] grid;
  
  Bricks(){
    this.Size = 25;
    
    //giver arrayet 246 pladser og sætter alle false
    this.grid = new boolean[246];
    Arrays.fill(this.grid, false);
    
    //for loop der tilfældigt laver 100 af de 246 til true
    for (int n = 0; n < 100; n++){
      float r = random(-0.499, 246.499);
      round(r);
      int r2 = int(r);
      if (this.grid[r2] == false) {
        this.grid[r2] = true;
      } else {
          n = n - 1;
      }
    }
  }
  
  void show(){
    fill(200);
    rectMode(CORNER);
    //spawner blocks på alle de 100 true pladser
    for (int n2 = 0; n2 < 246; n2++){
      //tjekker om n er mindre end mængden af i rækken
      if (n2 < 27){
        if (this.grid[n2] == true){
          //spawner blocken på positionen
          rect(this.Size * n2 + (this.Size * 3), this.Size, this.Size, this.Size);
        }  
      }
      //tjekker om n er lige med eller større end rækken før og tjekker om n er mindre end mængden af i rækken
      if (n2 >= 27 && n2 < 27 + 14){
        if (this.grid[n2] == true){
          //spawner block samme måde som før, bortset fra at der minuses med mængden af blocks i rækken før, og den spawner en række under
          rect((this.Size * (n2 - 27) * 2) + (this.Size * 3), this.Size * 2, this.Size, this.Size);
        }  
      }
      if (n2 >= 27 + 14 && n2 < 27 + 14 + 29){
        if (this.grid[n2] == true){
          rect((this.Size * (n2 - 27 - 14)) + this.Size, this.Size * 3, this.Size, this.Size);
        }
      }
      if (n2 >= 27 + 14 + 29 && n2 < 27 + 14 + 29 + 15){
        if (this.grid[n2] == true){
          rect((this.Size * (n2 - 27 - 14 - 29) * 2) + this.Size, this.Size * 4, this.Size, this.Size);
        }  
      }
      if (n2 >= 27 + 14 + 29 + 15 && n2 < 27 + 14 + 29 + 15 + 29){
        if (this.grid[n2] == true){
          rect((this.Size * (n2 - 27 - 14 - 29 - 15)) + this.Size, this.Size * 5, this.Size, this.Size);
        }
      }
      if (n2 >= 27 + 14 + 29 + 15 + 29 && n2 < 27 + 14 + 29 + 15 + 29 + 15){
        if (this.grid[n2] == true){
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29) * 2) + this.Size, this.Size * 6, this.Size, this.Size);
        } 
      }
      if (n2 >= 27 + 14 + 29 + 15 + 29 + 15 && n2 < 27 + 14 + 29 + 15 + 29 + 15 + 29){
        if (this.grid[n2] == true){
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15)) + this.Size, this.Size * 7, this.Size, this.Size);
        }
      }
      if (n2 >= 27 + 14 + 29 + 15 + 29 + 15 + 29 && n2 < 27 + 14 + 29 + 15 + 29 + 15 + 29 + 15){
        if (this.grid[n2] == true){
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size, this.Size * 8, this.Size, this.Size);
        }  
      }
      if (n2 >= 27 + 14 + 29 + 15 + 29 + 15 + 29 + 15 && n2 < 27 + 14 + 29 + 15 + 29 + 15 + 29 + 15 + 29){
        if (this.grid[n2] == true){
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size, this.Size * 9, this.Size, this.Size);
        }
      }
      if (n2 >= 27 + 14 + 29 + 15 + 29 + 15 + 29 + 15 + 29 && n2 < 27 + 14 + 29 + 15 + 29 + 15 + 29 + 15 + 29 + 15){
        if (this.grid[n2] == true){
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29) * 2) + this.Size, this.Size * 10, this.Size, this.Size);
        }  
      }
      if (n2 >= 27 + 14 + 29 + 15 + 29 + 15 + 29 + 15 + 29 + 15 && n2 < 27 + 14 + 29 + 15 + 29 + 15 + 29 + 15 + 29 + 15 + 29){
        if (this.grid[n2] == true){
          rect((this.Size * (n2 - 27 - 14 - 29 - 15 - 29 - 15 - 29 - 15 - 29 - 15)) + this.Size, this.Size * 11, this.Size, this.Size);
        }
      }
    }
  } 
}
  