class Cursor{
  
  void create(int x,int y){
    rectMode(CENTER);
    stroke(255);
    rect(x,y,10,30);
  }  
  
  int carsorLoc(int locX){
    if(mousePressed==true){
      if(0<=mouseX && mouseX <=255){
        locX=mouseX;
      }
    }
    return locX;
  }
}