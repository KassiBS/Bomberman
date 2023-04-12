int pladeFarve = -15546045;
int gridFarve = -6908266;
int bombeFarve = -1433747;
int explosionsFarve = -683444;
int valcomFarve = -1013485;
int playerFarve = -6886657;

class Collision{
  int colorDR;
  int colorDL;
  int colorTR;
  int colorTL;
  
  int colorD;
  int colorT;
  int colorR;
  int colorL;
  
  int blockColorR;
  int blockColorL;
  int blockColorT;
  int blockColorD;
  
  
  
  Collision(){
    
  }
  void beforeBomb(){
    //COLLISION FOR PLAYER
    //Farven på hjørnerne
    colorDR = get(int(Player1.x + Player1.size/2),int(Player1.y + Player1.size/2));
    colorTR = get(int(Player1.x + Player1.size/2),int(Player1.y - Player1.size/2));
    colorDL = get(int(Player1.x - Player1.size/2),int(Player1.y + Player1.size/2));
    colorTL = get(int(Player1.x - Player1.size/2),int(Player1.y - Player1.size/2));
    //if statement tjekker om tastaturet er trykket på
    //print(Player1.colorTR);
    if(keyPressed){
      //tjekker om spiller rammer en block når op tasten bliver trykket
      if(key == 'w' && colorTR != pladeFarve|| key == 'w' && colorTL != pladeFarve ){
        Player1.y +=1;
      }
      //tjekker om spiller rammer en block når ned tasten bliver trykket
      if(key == 's' && colorDR != pladeFarve|| key == 's' && colorDL != pladeFarve ){
        Player1.y -=1;
      }
      //tjekker om spiller rammer en block når venstre tasten bliver trykket
      if(key == 'a' && colorTL != pladeFarve|| key == 'a' && colorDL != pladeFarve ){
        Player1.x +=1;
      }
      //tjekker om spiller rammer en block når højre tasten bliver trykket
      if(key == 'd' && colorTR != pladeFarve|| key == 'd' && colorDR != pladeFarve ){
        Player1.x -=1;
      }
    }

   //COLLISION FOR EXPLOSION
   //forlykke henter bombe instans nummer i
   for(int i = 0; i < Bombe.size(); i++){
      Bomb temp = Bombe.get(i);
      //if statement tjekker om radius er mindre end max radius 
      if(temp.radiusR < temp.radiusMax){
        blockColorR = get(int(temp.x + Grid.Size + temp.radiusR * Grid.Size), int(temp.y));
        //if statement tjekker om farven er grøn
        if(blockColorR != gridFarve){
          temp.radiusR += 1;
        }
      }
      //if statement tjekker om radius er mindre end max radius 
      if(temp.radiusL < temp.radiusMax){
        blockColorL = get(int(temp.x - Grid.Size - temp.radiusL * Grid.Size), int(temp.y));
        //if statement tjekker om farven er grøn
        if(blockColorL != gridFarve){
          temp.radiusL += 1;
        }
      }
      //if statement tjekker om radius er mindre end max radius 
      if(temp.radiusD < temp.radiusMax){
        blockColorD = get(int(temp.x), int(temp.y + Grid.Size + temp.radiusD * Grid.Size));
        //if statement tjekker om farven er grøn
        if(blockColorD != gridFarve){
          temp.radiusD += 1;
        }
      }
      //if statement tjekker om radius er mindre end max radius 
      if(temp.radiusT < temp.radiusMax){
        blockColorT= get(int(temp.x), int(temp.y - Grid.Size - temp.radiusT * Grid.Size));
        //if statement tjekker om farven er grøn
        if(blockColorT != gridFarve){
          temp.radiusT += 1;
        }
      }
   }

  }
  
void afterBomb(){
  //COLLISION MELLEM EKSPLOSION OG BRICKS
    for(int n = 0; n < 100; n++){
      if(get(int(CreateBricks.xLoc[n] + 12), int(CreateBricks.yLoc[n] + 12)) == explosionsFarve){
          CreateBricks.grid[int(CreateBricks.BrickNum[n])] = 2;
        }
      }
   //COLLISION MELLEM BOMBE OG PLAYER
   //forlykke henter bombe instans nummer i
   for(int i = 0; i < Bombe.size(); i++){
      Bomb temp = Bombe.get(i);
      colorD = get(int(Player1.x),int(Player1.y + Player1.size/2));
      colorT = get(int(Player1.x),int(Player1.y - Player1.size/2));
      colorL = get(int(Player1.x - Player1.size/2),int(Player1.y));
      colorR = get(int(Player1.x + Player1.size/2),int(Player1.y));
      if(Player1.x + Player1.size/2 < temp.x - temp.size/2 || Player1.x - Player1.size/2 > temp.x + temp.size/2||Player1.y + Player1.size/2 < temp.y - temp.size/2 || Player1.y - Player1.size/2 > temp.y + temp.size/2){
        if(keyPressed){
        //tjekker om spiller rammer en bombe når op tasten bliver trykket
        if(key == 'w' && colorT != pladeFarve){
          Player1.y +=1;
         }
        //tjekker om spiller rammer en bombe når ned tasten bliver trykket
        if(key == 's' && colorD != pladeFarve){
          Player1.y -=1;
        }
        //tjekker om spiller rammer en bombe når venstre tasten bliver trykket
        if(key == 'a' && colorL != pladeFarve){
          Player1.x +=1;
        }
        //tjekker om spiller rammer en bombe når højre tasten bliver trykket
        if(key == 'd' && colorR != pladeFarve){
          Player1.x -=1;
        }
      }
     }
    }
   //COLLISION MELLEM EKSPLOSION OG PLAYER
   //Tjekker farve rundt omkring player
    colorDR = get(int(Player1.x + Player1.size/2),int(Player1.y + Player1.size/2));
    colorTR = get(int(Player1.x + Player1.size/2),int(Player1.y - Player1.size/2));
    colorDL = get(int(Player1.x - Player1.size/2),int(Player1.y + Player1.size/2));
    colorTL = get(int(Player1.x - Player1.size/2),int(Player1.y - Player1.size/2));
   //print(Player1.colorT);
   // if statement tjekker om den rammer bombe
   if(colorTL == explosionsFarve||colorTR == explosionsFarve||colorDL == explosionsFarve||colorDR == explosionsFarve ){
       Player1.health = false;
       //print("av");
   }
   //COLLISION MELLEM PLAYER OG ENEMY
   //Tjekker farve rundt omkring player
   colorD = get(int(Player1.x),int(Player1.y + Player1.size/2));
   colorT = get(int(Player1.x),int(Player1.y - Player1.size/2));
   colorL = get(int(Player1.x - Player1.size/2),int(Player1.y));
   colorR = get(int(Player1.x + Player1.size/2),int(Player1.y));
   // if statement tjekker om player rammer valcom
   if(colorT == valcomFarve || colorD == valcomFarve || colorL == valcomFarve || colorR == valcomFarve|| colorTL == valcomFarve || colorTR == valcomFarve || colorDL == valcomFarve || colorDR == valcomFarve){
     Player1.health = false;
   }
   
   for(int k = 0; k < valcom.size(); k++){
     Enemy temp = valcom.get(k);
     //COLLISION MELLEM ENEMY OG EKSPLOSION
     //Sætter tjeksize udenfor enemy
     temp.checkSize = temp.size/2;
     temp.checkColor();
     //if statement tjekker om valcom bliver ramt af eksplosion
     if(temp.colorT == explosionsFarve || temp.colorD == explosionsFarve|| temp.colorR == explosionsFarve|| temp.colorL == explosionsFarve){
       temp.health = false;
       print(temp.checkSize);
     }
     //COLLISION MELLEM ENEMY OG BRICKS
     //Angiver at valcom skal lave tjeksize med 1 block
     temp.checkSize = Grid.Size;
     temp.checkColor();
     // to forlykker gør at den tjekker condition for enemy for alle blocks
     for(int i = 1; i < 30; i++){
       for(int j = 1; j <12; j++){
         // if statement tjekker enemy condtition på midten af hver block
         if (temp.x == Grid.Size * i + Grid.Size/2 && temp.y == Grid.Size * j + Grid.Size/2){
           // giver tilfældig x hastighed
           temp.vx = velocityCalc();
           // giver tilfældig x-værdi på baggrund af y-værdien
           temp.vy = velocity(temp.vx);
           // de to funktioner tjekker om at de ikke rammer muren og retter op på det
           temp.vy = correctVelY(temp.vy,temp.colorD,temp.colorT);
           temp.vx = correctVelX(temp.vy,temp.colorR,temp.colorL);
       
         }
       }
      }
   }
    
  }
}


// funktion giver tilfældig hastighed på enemy
float velocityCalc(){
  // giver tilfældigt nummer mellem 1 og 3
  float vel = int(random(1,4));
  //if statements tjekker hvilket tal det er og giver en hastighed ud fra det
  if(vel == 1){
    vel = 1;
  }
  if(vel == 2){
    vel = -1;
  }
  if(vel == 3){
    vel = 0;
  }
  //print(vel);
  return vel;
}

//Funktion giver ny hastighed ud fra et andet koordinat 
float velocity(float velo){
  //print(vel);
  // if statements tjekker tidligere koordinats værdi og giver en ny hastighed afhængig af den tidligere hastighed
  if (velo == 0){
    velo = int(random(1,3));
    if (velo == 1){
      velo = 1;
    }
    if (velo == 2){
      velo = -1;
    }
  }  
  else if(velo == 1 ){
    velo = 0;
  }
  else if(velo == -1 ){
    velo = 0;
  }
  
  return velo;
}
//retter op på y-hastigheden hvis den går ind i væggen
float correctVelY(float velo,float colorD,float colorT){
  //sætter clear = true
  boolean clear = true;
  //if statements tjekker om enemy rammer væggen og sætter clear = true
  if (velo == 1 && colorD != pladeFarve && colorD != playerFarve){
    clear = false;
    // giver en ny hastighed  
    velo = velocityCalc();
    //if statement tjekker om enemy rammer væggen igen
    if(velo == 1){
      //køre funktionen igen
      velo = correctVelY(velo,colorD,colorT);
    }
  }
  if (velo == -1 && colorT != pladeFarve && colorT != playerFarve){
    clear = false;
    velo = velocityCalc();
    if(velo == -1){
      //print("Forkert");
      velo = correctVelY(velo,colorD,colorT);
    }
  }
  // if statement tjekker om clear = false
  if(clear == false){
    velo = correctVelY(velo,colorD,colorT);
  }
  return velo;
}
//Funktion giver ny koordinat for enemy
float correctVelX(float velo, float colorR, float colorL){
  // giver en ny hastighed på baggrund af y-hastigheden
  velo = velocity(velo);
  boolean clear = true;
  //If statement tjekker om enemy rammer væggen og sætter claer = false
  if(velo == -1 && colorL != pladeFarve && colorL != playerFarve){
    clear = false;
    // giver en ny hastighed 
    velo = velocityCalc();
      //if statement tjekker om enemy rammer væggen igen
      if(velo == -1){
        //køre funktionen igen
        velo = correctVelX(velo,colorR,colorL);
     }
  }
  if(velo == 1 && colorR != pladeFarve && colorR != playerFarve){
    clear = false;
    velo = velocityCalc();
     if(velo == 1){
       velo = correctVelX(velo,colorR,colorL);
     }
  }
  // if statement tjekker om clear = false
  if(clear == false){
    velo = correctVelX(velo,colorR,colorL);
  }
  return velo;
}
