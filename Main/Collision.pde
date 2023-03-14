class Collision{
  float T;
  float B;
  float L;
  float R;
  int j;
  
  Collision(){
    this.T = 0;
    this.B = 1;
    this.L = 2;
    this.R = 3;
  }
  void check(){
  // if statements stopper player når den rammer muren
  //Note: Har fikset rectMode(CENTER)
    if(Player1.x < Player1.size/2 + Grid.Size){
      Player1.x = Player1.size/2 + Grid.Size;
    }
    if(Player1.x > width - Player1.size/2 - Grid.Size){
      Player1.x = width - Player1.size/2 - Grid.Size;
    }
    if(Player1.y < Player1.size/2 + Grid.Size){
      Player1.y = Player1.size/2 + Grid.Size;
    }
    if(Player1.y > height - Player1.size/2 - Grid.Size){
      Player1.y = height - Player1.size/2 - Grid.Size;
    }
    
<<<<<<< HEAD
    
    
    for (int i = 0; i < 5; i++){
      this.T += 2;
      this.B += 2;
      
      this.j = 0;
      
      
      for (; this.j < 14; j++){
    if(Player1.x + Player1.size/2 > Grid.Size * this.T && Player1.x + Player1.size/2 < Grid.Size * this.B && Player1.y + Player1.size/2 > Grid.Size * this.L && Player1.y - Player1.size/2 < Grid.Size * this.R){
      if (keyPressed){
        if(key == 'w' || key == 'W'){
          Player1.y = Grid.Size * this.B + Player1.size/2;
        }
        else if(key == 'a' || key == 'A'){
          Player1.x = Grid.Size * this.R + Player1.size/2;
        }
        else if(key == 'd' || key == 'D'){
          Player1.x = Grid.Size * this.L - Player1.size/2;
        }
        else if(key == 's' || key == 'S'){
          Player1.y = Grid.Size * this.T - Player1.size/2;
        }    
      }
    }
    else if(Player1.x - Player1.size/2 < Grid.Size * this.B && Player1.x - Player1.size/2 > Grid.Size * this.T && Player1.y + Player1.size/2 > Grid.Size * this.L && Player1.y - Player1.size/2 < Grid.Size * this.R){
      if (keyPressed){
        if(key == 'w' || key == 'W'){
          Player1.y = Grid.Size * this.B + Player1.size/2;
        }
        else if(key == 'a' || key == 'A'){
          Player1.x = Grid.Size * this.R + Player1.size/2;
        }
        else if(key == 'd' || key == 'D'){
          Player1.x = Grid.Size * this.L - Player1.size/2;
        }
        else if(key == 's' || key == 'S'){
          Player1.y = Grid.Size * this.T - Player1.size/2;
        }    
      } 
=======
    if(Player1.x + Player1.size/2 > Grid.Size * 2 && Player1.x + Player1.size/2 < Grid.Size * 3 && Player1.y + Player1.size/2 > Grid.Size * 2 && Player1.y - Player1.size/2 < Grid.Size * 3){
      Player1.x = Grid.Size * 2 - Player1.size/2 ;
    }
    if(Player1.x - Player1.size/2 < Grid.Size * 3 && Player1.x - Player1.size/2 > Grid.Size * 2 && Player1.y + Player1.size/2 > Grid.Size * 2 && Player1.y - Player1.size/2 < Grid.Size * 3){
      Player1.x = Grid.Size * 3 + Player1.size/2 ;
>>>>>>> parent of 040d49a (Collision for first block)
    }
    
    this.L += 2;
    this.R += 2;
        
      }  
      this.L = 2;
      this.R = 3;
    }
    
    
    this.T = 0;
    this.B = 1;
    this.L = 2;
    this.R = 3;
  }
}
