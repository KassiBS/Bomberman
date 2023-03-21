Bomberman Player1 = new Bomberman();
MakeGrid Grid = new MakeGrid();
Collision Kollider = new Collision();
ArrayList<Bomb> Bombe = new ArrayList<Bomb>();

void setup(){
  size(775,325);
  //Viser player1 på kanvas
  Player1.show();
}

void draw(){
  //Baggrundsfarve er grøn
  background(18, 201, 67);
  Grid.show();
  //Opdaterer kondition på player
  Player1.update();
  Kollider.check();
  if (keyPressed){
    //keypressed laver ny instans af bombe
    if(key == 'c'){
      //if statement tjekker om der er færre bomber placeret en det maximumme antal bomber der kan placeres
      if(Player1.bombPlaced < Player1.bombNr){
      Bombe.add(new Bomb());
      //Der bliver lagt 1 til antal bomber placeret
      Player1.bombPlaced += 1;
      }  
    }
  }
//for-lykke bliver ved med at køre helt til at den har fyldt arrayet ud
  for(int i = 0; i < Bombe.size(); i++){
     Bomb temp = Bombe.get(i);
     temp.spawn();
     //print(temp.x +"   "+ temp.y);
     //if statement tjekker om bombe er exploderet. Hvis den er det fjerner den bomben 
     if(temp.detonate == true){
       Bombe.remove(i);
       //Der bliver trukket 1 fra antal bomber placeret
       Player1.bombPlaced -= 1;
     }
  }
    
}
