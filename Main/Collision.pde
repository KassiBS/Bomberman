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
      Player1.x = Grid.Size * 2 - Player1.size/2 ;
    }
    if(Player1.x - Player1.size/2 < Grid.Size * 3 && Player1.x - Player1.size/2 > Grid.Size * 2 && Player1.y + Player1.size/2 > Grid.Size * 2 && Player1.y - Player1.size/2 < Grid.Size * 3){
      Player1.x = Grid.Size * 3 + Player1.size/2 ;
    }
  }
}
