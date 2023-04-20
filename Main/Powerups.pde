class Powerups{
  boolean Check;
  boolean HaveBAM;
  boolean HaveBSM;
  
  int BombAmountMod;
  int BombSizeMod;
  
  Powerups(){
    this.Check = false;
    this.HaveBAM = false;
    this.HaveBSM = false;
    BombAmountMod = 1;
    BombSizeMod = 1;
  }
  
  void show(){
    if(HaveBSM == true){
      println("Bigger bombs");
      BombSizeMod = 2;
    }
    if(HaveBAM == true){
      println("More bombs");
      BombAmountMod = 2;
    }
  }
}
