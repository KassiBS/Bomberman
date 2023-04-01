class Collision{
  int colorDR;
  int colorDL;
  int colorTR;
  int colorTL;
  
  int colorDR2;
  int colorDL2;
  int colorTR2;
  int colorTL2;
  
  int colorD;
  int colorT;
  int colorR;
  int colorL;
  
  int blockColorR;
  int blockColorL;
  int blockColorT;
  int blockColorD;
  
  int pladeFarve = -15546045;
  int bombeFarve = -1433747;
  int explosionsFarve = -68344;
  
  Collision(){
    
  }
  void check(){
    //COLLISION FOR PLAYER
    //Farven på hjørnerne
    colorDL = get(int(Player1.x - Player1.size/2),int(Player1.y + Player1.size/2));
    colorDR = get(int(Player1.x + Player1.size/2),int(Player1.y + Player1.size/2));
    colorTL = get(int(Player1.x - Player1.size/2),int(Player1.y - Player1.size/2));
    colorTR = get(int(Player1.x + Player1.size/2),int(Player1.y - Player1.size/2));
    //if statement tjekker om tastaturet er trykket på
    if(keyPressed){
      //tjekker om spiller rammer en block når op tasten bliver trykket
      if(key == 'w' && colorTR != this.pladeFarve|| key == 'w' && colorTL != this.pladeFarve ){
        Player1.y +=1;
      }
      //tjekker om spiller rammer en block når ned tasten bliver trykket
      if(key == 's' && colorDR != this.pladeFarve|| key == 's' && colorDL != this.pladeFarve ){
        Player1.y -=1;
      }
      //tjekker om spiller rammer en block når venstre tasten bliver trykket
      if(key == 'a' && colorTL != this.pladeFarve|| key == 'a' && colorDL != this.pladeFarve ){
        Player1.x +=1;
      }
      //tjekker om spiller rammer en block når højre tasten bliver trykket
      if(key == 'd' && colorTR != this.pladeFarve|| key == 'd' && colorDR != this.pladeFarve ){
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
  
void bombCheck(){
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
        if(key == 'w' && colorT != this.pladeFarve){
          Player1.y +=1;
         }
        //tjekker om spiller rammer en bombe når ned tasten bliver trykket
        if(key == 's' && colorD != this.pladeFarve){
          Player1.y -=1;
        }
        //tjekker om spiller rammer en bombe når venstre tasten bliver trykket
        if(key == 'a' && colorL != this.pladeFarve){
          Player1.x +=1;
        }
        //tjekker om spiller rammer en bombe når højre tasten bliver trykket
        if(key == 'd' && colorR != this.pladeFarve){
          Player1.x -=1;
        }
      }
     }
    }
   //COLLISION MELLEM EKSPLOSION OG PLAYER
   colorDL2 = get(int(Player1.x - Player1.size/2),int(Player1.y + Player1.size/2));
   colorDR2 = get(int(Player1.x + Player1.size/2),int(Player1.y + Player1.size/2));
   colorTL2 = get(int(Player1.x - Player1.size/2),int(Player1.y - Player1.size/2));
   colorTR2 = get(int(Player1.x + Player1.size/2),int(Player1.y - Player1.size/2));
   print(colorDL2);
   if(colorTL2 < bombeFarve){
     Player1.health = false;
   }
  }
}
