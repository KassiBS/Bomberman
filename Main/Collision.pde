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
    
    
    
    if(Player1.x + Player1.size/2 > Grid.Size * 2 && Player1.x + Player1.size/2 < Grid.Size * 3 && Player1.y + Player1.size/2 > Grid.Size * 2 && Player1.y - Player1.size/2 < Grid.Size * 3){
      if (keyPressed){
        if(key == 'w' || key == 'W'){
          Player1.y = Grid.Size * 3 + Player1.size/2;
        }
        else if(key == 'a' || key == 'A'){
          Player1.x = Grid.Size * 3 + Player1.size/2;
        }
        else if(key == 'd' || key == 'D'){
          Player1.x = Grid.Size * 2 - Player1.size/2;
        }
        else if(key == 's' || key == 'S'){
          Player1.y = Grid.Size * 2 - Player1.size/2;
        }    
      }
    }
    if(Player1.x - Player1.size/2 < Grid.Size * 3 && Player1.x - Player1.size/2 > Grid.Size * 2 && Player1.y + Player1.size/2 > Grid.Size * 2 && Player1.y - Player1.size/2 < Grid.Size * 3){
      if (keyPressed){
        if(key == 'w' || key == 'W'){
          Player1.y = Grid.Size * 3 + Player1.size/2;
        }
        else if(key == 'a' || key == 'A'){
          Player1.x = Grid.Size * 3 + Player1.size/2;
        }
        else if(key == 'd' || key == 'D'){
          Player1.x = Grid.Size * 2 - Player1.size/2;
        }
        else if(key == 's' || key == 'S'){
          Player1.y = Grid.Size * 2 - Player1.size/2;
        }    
      }
    }
    
    if (Player1.x > 300){
      Player1.health = false;
    }
  }
}
