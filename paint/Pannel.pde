class pannel{
  void colorBar(){
    int yStroke=height*3/4-40;
    lineStroke(yStroke);
    int yR=height*3/4;//Red pannel 
    lines(yR,"Red");
    int yG=height*3/4+40;//Green pannel 
    lines(yG,"Green");
    int yB=height*3/4+80;//Blue pannel 
    lines(yB,"Blue");  
  }
  
  //RGB colorpannel
  void lines(int Y,String C){
    strokeWeight(1);
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
  void lineStroke(int y){
    noStroke();
    rectMode(CENTER);
    fill(200);
    rect(256/2,y+15,264,30);
    fill(0);
    triangle(255,y,255,y+30,0,y+15);
  }
}