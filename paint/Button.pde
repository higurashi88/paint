class Button{
  boolean button(int x,int y){
    int side=20;
    fill(200);
    rect(x,y,side,side);
    if(x<mouseX && mouseX<x+20){
      if(y<mouseY && mouseY<y+20){
        if(mousePressed==true){
          fill(100);
          rect(x,y,side,side);
          return true;
        }
      }
    }
    return false;
  }
}