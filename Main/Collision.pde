class Collision{
  
  Collision(){
    
  }
  void check(){
  //COLLISION FOR GRIDS
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
          Player1.y = Grid.Size * (3+j ) + Player1.size/2;
        }
        else if(key == 'a' || key == 'A'){
          Player1.x = Grid.Size * (3 + i) + Player1.size/2;
        }
        else if(key == 'd' || key == 'D'){
          Player1.x = Grid.Size * (2 + i) - Player1.size/2;
        }
        else if(key == 's' || key == 'S'){
          Player1.y = Grid.Size * (2+ j) - Player1.size/2;
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
   
   //Collision for explosion
   //forlykke henter bombe instans nummer i
   for(int i = 0; i < Bombe.size(); i++){
      Bomb temp = Bombe.get(i);
      // if satement tjekker om explosions radius går ud over væg
      if (temp.x - temp.radiusL * Grid.Size < Grid.Size ){
       // bombe radius bliver trukket fra hvor meget den går ud over væggen
       print(ExpUdOverVæg(int(temp.x),int(temp.radiusL)));
       
      }
      if (temp.x < width - Grid.Size && temp.x > width - Grid.Size * 2){
       temp.radiusR = 0;
       }
     
      if (temp.y > Grid.Size && temp.y < Grid.Size * 2){
       temp.radiusT = 0;
      }
      if (temp.y < height - Grid.Size && temp.y > height - Grid.Size * 2){
       temp.radiusD = 0;
      }
     
   }
    
  }
}

//Funktion finder ud af hvor meget bomben går ud over væggen
int ExpUdOverVæg(int BombPos, int radius){
  int ExpOvVæg;
  ExpOvVæg = radius - (((BombPos - int(Grid.Size/2)) - int(Grid.Size))/int(Grid.Size));
  return ExpOvVæg;
}
