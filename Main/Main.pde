Bomberman Player1 = new Bomberman();
MakeGrid Grid = new MakeGrid();
Collision Kollider = new Collision();

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
}
