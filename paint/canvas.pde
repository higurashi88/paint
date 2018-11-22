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
    if(mousePressed==true){
      if(500<=mouseX && mouseX <900+500){
        if(50<=mouseY && mouseY<900+500){
          dotR[mouseX-500][mouseY-50]=r;
          dotG[mouseX-500][mouseY-50]=g;
          dotB[mouseX-500][mouseY-50]=b;
          fill(dotR[mouseX-500][mouseY-50],dotG[mouseX-500][mouseY-50],dotB[mouseX-500][mouseY-50]);
          stroke(dotR[mouseX-500][mouseY-50],dotG[mouseX-500][mouseY-50],dotB[mouseX-500][mouseY-50]);
          rect(dotX[mouseX-500],dotY[mouseY-50],1,1);
        }
      }
    }
  }
  
}