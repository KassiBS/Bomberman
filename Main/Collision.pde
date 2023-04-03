int pladeFarve = -15546045;
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
        if(blockColorR == pladeFarve){
          temp.radiusR += 1;
        }
      }
      //if statement tjekker om radius er mindre end max radius 
      if(temp.radiusL < temp.radiusMax){
        blockColorL = get(int(temp.x - Grid.Size - temp.radiusL * Grid.Size), int(temp.y));
        //if statement tjekker om farven er grøn
        if(blockColorL == pladeFarve){
          temp.radiusL += 1;
        }
      }
      //if statement tjekker om radius er mindre end max radius 
      if(temp.radiusD < temp.radiusMax){
        blockColorD = get(int(temp.x), int(temp.y + Grid.Size + temp.radiusD * Grid.Size));
        //if statement tjekker om farven er grøn
        if(blockColorD == pladeFarve){
          temp.radiusD += 1;
        }
      }
      //if statement tjekker om radius er mindre end max radius 
      if(temp.radiusT < temp.radiusMax){
        blockColorT= get(int(temp.x), int(temp.y - Grid.Size - temp.radiusT * Grid.Size));
        //if statement tjekker om farven er grøn
        if(blockColorT == pladeFarve){
          temp.radiusT += 1;
        }
      }
   }

  }
  
void afterBomb(){
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
   
   //COLLISION MELLEM ENEMY OG EKSPLOSION
   //Sætter tjeksize udenfor enemy
   valcom.checkSize = valcom.size/2+1 ;
   //if statement tjekker om valcom bliver ramt af eksplosion
   if(valcom.colorT == explosionsFarve || valcom.colorD == explosionsFarve|| valcom.colorR == explosionsFarve|| valcom.colorL == explosionsFarve){
     valcom.health = false;
   }
   
   //COLLISION MELLEM ENEMY OG BRICKS
   valcom.checkSize = Grid.Size;
   for(int i = 1; i < 30; i++){
     for(int j = 1; j <12; j++){
       if (valcom.x == Grid.Size * i + Grid.Size/2 && valcom.y == Grid.Size * j + Grid.Size/2){
         //valcom.vx = velocityCalc();
         //valcom.vy = velocity(valcom.vx);
         valcom.vy = correctVelY(valcom.vy);
         
     
       }
     }
    }
  }
}



float velocityCalc(){
  float vel = int(random(1,4));
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

float velocity(float velo){
  //print(vel);
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

float correctVelY(float velo){
  if (velo == 1 && valcom.colorD != pladeFarve && valcom.colorD != playerFarve){
    velo = velocityCalc();
    if(velo == 1){
      print("Forkert");
      velo = correctVelY(velo);
    }
  }
  if (velo == -1 && valcom.colorT != pladeFarve && valcom.colorT != playerFarve){
    velo = velocityCalc();
    if(velo == -1){
      print("Forkert");
      velo = correctVelY(velo);
    }
  }
  return velo;
}
