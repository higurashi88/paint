class Pannel{
  void CreatePannel(int Y,int r,int g,int b){
    for(int i=0;i<255;i++){
      if(r!=255)r++;
      if(g!=255)b++;
      if(b!=255)b++;
      stroke(r,g,b);
      line(i,Y,i,Y+10);
    }
  }
  
}