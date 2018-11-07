class colorPannel{
  int yR=height*3/4;
  int yG=height*3/4+40;
  int yB=height*3/4+80;
  void colors(){
   int r[] = new int[256];//red 
   int g[] = new int[256];//green
   int b[] = new int[256];//blue
   for(int i=0;i<256;i++){
     //koi iro kara usuku naruyouni
     r[i]=255-i;
     g[i]=255-i;
     b[i]=255-i;
     
     //red pannel
     stroke(r[i],0,0);    
     line(r[i],yR,r[i],yR+30);
     
     //green pannel
     stroke(0,g[i],0);
     line(g[i],yG,g[i],yG+30);
     
     //blue pannel
     stroke(0,0,b[i]);
     line(b[i],yB,b[i],yB+30);
   }
 }
 
 void pannelBar(int xR,int xG,int xB){
   rectMode(CENTER);
   noStroke();
   fill(255);
   rect(xR,yR+15,10,30);
   rect(xG,yG+15,10,30);
   rect(xB,yB+15,10,30);
   
 }
 
 void selectColors(int xR,int xG,int xB){

   int distR =int(dist(mouseX,mouseY,xR,yR+15));
   int distG =int(dist(mouseX,mouseY,xG,yG+15));
   int distB =int(dist(mouseX,mouseY,xB,yB+15));
   
   if(mousePressed==true){
      if(distR<=15){
      xR=mouseX;
   }else if(distG<=15){
      xG=mouseX;
   }else if(distB<=15){
      xB=mouseX;
     }
   }
 }
}