class Collision{
  int colorDR;
  int colorDL;
  int colorTR;
  int colorTL;
  
  int blockColorR;
  int blockColorL;
  int blockColorT;
  int blockColorD;
  
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
      if(key == 'w' && colorTR != -15546045|| key == 'w' && colorTL != -15546045 ){
        Player1.y +=1;
      }
      //tjekker om spiller rammer en block når ned tasten bliver trykket
      if(key == 's' && colorDR != -15546045|| key == 's' && colorDL != -15546045 ){
        Player1.y -=1;
      }
      //tjekker om spiller rammer en block når venstre tasten bliver trykket
      if(key == 'a' && colorTL != -15546045|| key == 'a' && colorDL != -15546045 ){
        Player1.x +=1;
      }
      //tjekker om spiller rammer en block når højre tasten bliver trykket
      if(key == 'd' && colorTR != -15546045|| key == 'd' && colorDR != -15546045 ){
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
        if(blockColorR == -15546045){
          temp.radiusR += 1;
        }
      }
      //if statement tjekker om radius er mindre end max radius 
      if(temp.radiusL < temp.radiusMax){
        blockColorL = get(int(temp.x - Grid.Size - temp.radiusL * Grid.Size), int(temp.y));
        //if statement tjekker om farven er grøn
        if(blockColorL == -15546045){
          temp.radiusL += 1;
        }
      }
      //if statement tjekker om radius er mindre end max radius 
      if(temp.radiusD < temp.radiusMax){
        blockColorD = get(int(temp.x), int(temp.y + Grid.Size + temp.radiusD * Grid.Size));
        //if statement tjekker om farven er grøn
        if(blockColorD == -15546045){
          temp.radiusD += 1;
        }
      }
      //if statement tjekker om radius er mindre end max radius 
      if(temp.radiusT < temp.radiusMax){
        blockColorT= get(int(temp.x), int(temp.y - Grid.Size - temp.radiusT * Grid.Size));
        //if statement tjekker om farven er grøn
        if(blockColorT == -15546045){
          temp.radiusT += 1;
        }
      }
   }
  }
}
