class pannel{
  void colorBar(){
    int yR=height*3/4;//Red pannel 
    lines(yR,"Red");
    int yG=height*3/4+40;//Green pannel 
    lines(yG,"Green");
    int yB=height*3/4+80;//Blue pannel 
    lines(yB,"Blue");  
  }
  
  //RGB colorpannel
  void lines(int Y,String C){
    int Col[]=new int[256];
    for(int i=0;i<256;i++){
      Col[i]=255-i;
      switch(C){
        case "Red":
          stroke(Col[i],0,0);
          break;
        case "Green":
          stroke(0,Col[i],0);
          break;
        case "Blue":
          stroke(0,0,Col[i]);
          break;
      }
      line(i,Y,i,Y+30);
      
    }
  }  
}