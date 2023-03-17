class Collision{
  
  Collision(){
    
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
    // To forlykker laver hit box på alle grid blocks
    for(int i = 0; i < 28; i=i+2){
      for(int j = 0; j < 10; j=j+2){
        
        if(Player1.x + Player1.size/2 > Grid.Size * (2 + i) && Player1.x + Player1.size/2 < Grid.Size * (3 + i) && Player1.y + Player1.size/2 > Grid.Size * (2 + j) && Player1.y - Player1.size/2 < Grid.Size * (3 + j)){
      if (keyPressed){
        if(key == 'w' || key == 'W'){
          Player1.y = Grid.Size * (3 + j) + Player1.size/2;
        }
        else if(key == 'a' || key == 'A'){
          Player1.x = Grid.Size * (3 + i) + Player1.size/2;
        }
        else if(key == 'd' || key == 'D'){
          Player1.x = Grid.Size * (2 + i) - Player1.size/2;
        }
        else if(key == 's' || key == 'S'){
          Player1.y = Grid.Size * (2 + j) - Player1.size/2;
        }    
      }

    }
    else if(Player1.x - Player1.size/2 < Grid.Size * (3 + i) && Player1.x - Player1.size/2 > Grid.Size * (2 + i) && Player1.y + Player1.size/2 > Grid.Size * (2 + j) && Player1.y - Player1.size/2 < Grid.Size * (3 + j)){
      if (keyPressed){
        if(key == 'w' || key == 'W'){
          Player1.y = Grid.Size * (3 + j) + Player1.size/2;
        }
        else if(key == 'a' || key == 'A'){
          Player1.x = Grid.Size * (3 + i) + Player1.size/2;
        }
        else if(key == 'd' || key == 'D'){
          Player1.x = Grid.Size * (3 + i) - Player1.size/2;
        }
        else if(key == 's' || key == 'S'){
          Player1.y = Grid.Size * (2 + j) - Player1.size/2;
        }    
      } 
    }
      }
    }
    
    
  }
}
