int constant = 0;
float[] kord = new float[2];

Bomberman Player1 = new Bomberman();
MakeGrid Grid = new MakeGrid();
Collision Kollider = new Collision();
ArrayList<Bomb> Bombe = new ArrayList<Bomb>();
Bricks CreateBricks = new Bricks();
ArrayList<Enemy> valcom = new ArrayList<Enemy>();

void setup(){
  size(775,325);
  //Viser player1 på kanvas
  background(18, 201, 67);
  Player1.show();
  
  
}

void draw(){
  rectMode(CENTER);
  //Baggrundsfarve er grøn
  background(18, 201, 67);
  Grid.show();
  CreateBricks.show();
  if(constant <1 ){
    for(int k = 0; k < 20; k++){
      valcom.add(new Enemy());
      Enemy temp = valcom.get(k);
      //kord = CorrectLoc(temp.xSpawn,temp.ySpawn);
      kord = CorrectLoc();
      print(kord[0],kord[1]);
      temp.xSpawn = kord[0];
      temp.ySpawn = kord[1];
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
    constant += 1;
  }
  
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
// funktion giver to koordinater tilbage i arraylist
float[] CorrectLoc(){
  float[] koordinater = new float[2];
  //angiver et tilfældigt koordinat
  koordinater[0] = float(int(random(1,30)));
  koordinater[1] = float(int(random(1,12)));
  if(get(int(koordinater[0]* Grid.Size + Grid.Size/2),int(koordinater[1]* Grid.Size + Grid.Size/2)) != -15546045){
    koordinater = CorrectLoc();
    
  }

  return koordinater;
}
