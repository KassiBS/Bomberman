Bomberman Player1 = new Bomberman();
MakeGrid Grid = new MakeGrid();
Collision Kollider = new Collision();
ArrayList<Bomb> Bombe = new ArrayList<Bomb>();
int bombNr = 0;

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
     Bomb temp = Bombe.get(bombNr);
     temp.update();
     bombNr =+ 1;
     print(bombNr);
    }
  }
}
