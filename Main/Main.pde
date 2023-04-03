Bomberman Player1 = new Bomberman();
MakeGrid Grid = new MakeGrid();
Collision Kollider = new Collision();
ArrayList<Bomb> Bombe = new ArrayList<Bomb>();
Bricks CreateBricks = new Bricks();
ArrayList<Enemy> valcom = new ArrayList<Enemy>();

void setup(){
  size(775,325);
  //Viser player1 på kanvas
  Player1.show();
  for(int k = 0; k < 1; k++){
    valcom.add(new Enemy());
    Enemy temp = valcom.get(k);
    //forlykker spawner tjekker alle koordinater på pladen
    for(int i = 1; i <30; i ++){
      for(int j = 1; j < 12; j++){
        if(i == temp.xSpawn){
          temp.x = i * Grid.Size + Grid.Size/2;
        }
        if(j == temp.ySpawn){
          temp.y = j * Grid.Size + Grid.Size/2;
        }
      }
    }
  }
  
}

void draw(){
  
  rectMode(CENTER);
  //Baggrundsfarve er grøn
  background(18, 201, 67);
  Grid.show();
  //CreateBricks.show();
  //Opdaterer kondition på player
  Player1.update();
  Kollider.beforeBomb();
//for-lykke bliver ved med at køre helt til at den har fyldt arrayet ud
  for(int i = 0; i < Bombe.size(); i++){
     Bomb temp = Bombe.get(i);
     temp.spawn();
     //print(temp.x +"   "+ temp.y);
     
     //if statement tjekker om bombe er exploderet. Hvis den er det fjerner den bomben 
     if(temp.exploded == true){
       Bombe.remove(i);
       //Der bliver trukket 1 fra antal bomber placeret
       Player1.bombPlaced -= 1;
     }
  }
  
  for(int i = 0; i < valcom.size(); i++){
    Enemy temp = valcom.get(i);
    temp.checkColor();
    temp.show();
    temp.update();
    if(temp.health == false){
      valcom.remove(i);
    }
  }
  
  Kollider.afterBomb();
}

void keyPressed(){
  //tjekker om x knappen bliver trykket ned
  if(Player1.health){
    if (key == 'x'|| key == 'X'){
      //if statement tjekker om der er færre bomber placeret en det maximumme antal bomber der kan placeres
        if(Player1.bombPlaced < Player1.bombNr){
        Bombe.add(new Bomb());
        //Der bliver lagt 1 til antal bomber placeret
        Player1.bombPlaced += 1;
  
       } 
    }
  }
}
