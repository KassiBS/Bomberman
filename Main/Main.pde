int constant = 0;
int constant2 = 0;
float[] kord = new float[2];

int interval = 200000;
int timeStamp = 0;
int timer;
boolean timerFærdig = false;

Bomberman Player1 = new Bomberman();
MakeGrid Grid = new MakeGrid();
Collision Kollider = new Collision();
ArrayList<Bomb> Bombe = new ArrayList<Bomb>();
Bricks CreateBricks = new Bricks();
ArrayList<Enemy> valcom = new ArrayList<Enemy>();
ArrayList<Pontan> pontan = new ArrayList<Pontan>();
Powerups Powerup = new Powerups();
Victory End = new Victory();


void setup(){
  size(775,325);
  Player1.show();
  timeStamp = millis();
}

void draw(){
  rectMode(CENTER);
  //Baggrundsfarve er grøn
  background(18, 201, 67);
  End.show();
  Powerup.show();
  CreateBricks.show();
  Grid.show();
  
  if(constant <1 ){
    for(int k = 0; k < 5; k++){
        valcom.add(new Enemy());
        Enemy temp = valcom.get(k);
        kord = CorrectLoc();
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
  
  // if statement tjekker om timer er gået og om constant2 er mindre end 1
  if(constant2 <1 && timerFærdig == true){
    //ændre valcom farve til pontan farve
    valcomFarve = -2414809;
    for(int k = 0; k < 8; k++){
        pontan.add(new Pontan());
        Pontan temp = pontan.get(k);
        kord = CorrectLoc();
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
    constant2 += 1;
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
    if(temp.health == false || timerFærdig == true){
      valcom.remove(i);
    }
  }
  if(timerFærdig == true){
    for(int i = 0; i < pontan.size(); i++){
      Pontan temp = pontan.get(i);
      temp.checkColor();
      temp.show();
      temp.update();
      if(temp.health == false){
        pontan.remove(i);
      }
    }
  }
    
  Kollider.afterBomb();
  //timer er den værdi der vises på spillerbrættet
  timer = interval/1000-millis()/1000;
  //if statement tjekker om der er gået 200 minutter
  if(millis() - timeStamp > interval){
    //sætter timer til 0
      timer = 0;
      //sætter timerFærdig = true og alle valcom instanser bliver fjernet
      timerFærdig = true;
    }
   textSize(20);
   textAlign(LEFT,CENTER);
   fill(0);
   
   text("TIME " + timer,Grid.Size,Grid.Size/2 -4);
}

void keyPressed(){
  //tjekker om x knappen bliver trykket ned
  if(Player1.health){
    if (key == 'x'|| key == 'X'){
      //if statement tjekker om der er færre bomber placeret en det maximumme antal bomber der kan placeres
        if(Player1.bombPlaced < Player1.bombNr * Powerup.BombAmountMod){
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
  if(get(int(koordinater[0]* Grid.Size + Grid.Size/2),int(koordinater[1]* Grid.Size + Grid.Size/2)) != -15546045 || koordinater[0]* Grid.Size + Grid.Size/2 < Grid.Size * 4 && koordinater[1]* Grid.Size + Grid.Size/2 < Grid.Size * 4){
    koordinater = CorrectLoc();
    
  }

  return koordinater;
}
