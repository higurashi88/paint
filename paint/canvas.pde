class Canvas{
    int dotR[][]= new int [900][900];
    int dotG[][]= new int [900][900];
    int dotB[][]= new int [900][900];
    int dotX[]= new int [900];
    int dotY[]= new int [900];
    int RectSide =1;
    
  void PixelCanvas(){
    
    for(int i=0;i<900;i++){
      dotX[i]=i+500;
      for(int j=0;j<900;j++){
        dotY[j]=j+50;
        rect(dotX[i],dotY[j],RectSide,RectSide);
      }
    }   
  }
  
  void reloadPixelCanvas(int r,int g,int b){
    int x=mouseX-500,y=mouseY-50;
    if(mousePressed==true){
      if(500<=mouseX && mouseX <900+500){
        if(50<=mouseY && mouseY<900+500){
          dotR[x][y]=r;
          dotG[x][y]=g;
          dotB[x][y]=b;
          fill(dotR[x][y],dotG[x][y],dotB[x][y]);
          stroke(dotR[x][y],dotG[x][y],dotB[x][y]);
          rect(dotX[x],dotY[y],1,1);
        }
      }
    }
  }
  
}