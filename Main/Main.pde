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
    if(key == 'c'){
           
    }
  }
//for-lykke bliver ved med at køre helt til at den har fyldt arrayet ud
  for(int i = 0; i < Bombe.size(); i++){
     Bomb temp = Bombe.get(i);
     temp.spawn();
     //if statement tjekker om bombe er exploderet. Hvis den er det fjerner den bomben 
     if(temp.detonate == true){
       Bombe.remove(i);
     }
  }
    
}
//funktion tilføjer en ny instans af en bombe, når musen bliver trykket
void mouseReleased(){
  Bombe.add(new Bomb());
}
