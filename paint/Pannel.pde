class Pannel{
  void createPannel(int Y,int r,int g,int b){
    for(int i=0;i<255;i++){
      if(r!=0)r++;
      if(g!=0)g++;
      if(b!=0)b++;
      stroke(r,g,b);
      line(i+5,Y,i+5,Y+40);
    }
  }
  
  int cursor(int x,int y){
    stroke(0);
    fill(255);
    if(20<mouseX && mouseX <270){
      if(y<mouseY && mouseY<y+40){
        if(mousePressed==true){
          x=mouseX-10;
        }
      }
    }
    rect(x,y,5,40);
    return x;
  }
  
}