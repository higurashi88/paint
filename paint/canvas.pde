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
  
  int reloadPixelCanvas(int x,int y,int r,int g,int b,int thick){
    if(mousePressed==true){
      if(0<=x && x <900){
        if(0<=y && y<900){
          if(dist(dotX[x],dotY[y],x,y)<=thick){
            //if(x<0 || y<0)return 0;
            reloadPixelCanvas(x+1,y,r,g,b,thick);
            reloadPixelCanvas(x,y+1,r,g,b,thick);
            reloadPixelCanvas(x-1,y,r,g,b,thick);
            reloadPixelCanvas(x,y-1,r,g,b,thick);
          }
          dotR[x][y]=r;
          dotG[x][y]=g;
          dotB[x][y]=b;
          fill(dotR[x][y],dotG[x][y],dotB[x][y]);
          stroke(dotR[x][y],dotG[x][y],dotB[x][y]);
          rect(dotX[x],dotY[y],1,1);
        }
      }
    }
    return 0;
  }
  
}