Bomberman Player1 = new Bomberman();
void setup(){
  size(775,325);
  
  //Viser player1 på kanvas
  Player1.show();
}

void draw(){
  //Baggrundsfarve er grøn
  background(18, 201, 67);
  //Opdaterer kondition på player
  Player1.update();
}
