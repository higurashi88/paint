class canvas{
  void pixel(int R,int G, int B){
    int pixelR[][]=new int[1100][900];
    int pixelG[][]=new int[1100][900];
    int pixelB[][]=new int[1100][900];
    int RectSide=1;
    noStroke();
    rectMode(CENTER);
    for(int i=0;i<1100;i++){
      for(int j=0;j<900;j++){
        pixelR[i][j]=R;
        pixelG[i][j]=G;
        pixelB[i][j]=B;
        fill(pixelR[i][j],pixelG[i][j],pixelB[i][j]);
        rect(i+350,j+50,RectSide,RectSide);
      }
    }
  }
  
  void drawArea(){
    noStroke();
    rectMode(CENTER);
    rect(900,500,1150,990);
  }
  
  boolean OnCanvas(){
    if(900-1150/2<=mouseX && mouseX<=900+1150/2){
      if(500-990/2<=mouseY && mouseY<=500+990/2){
        return true;
      }
    }
    return false;  
  }
}