class colorPannel{

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
     line(r[i],height*3/4,r[i],height*3/4+30);
     
     //green pannel
     stroke(0,g[i],0);
     line(g[i],height*3/4+40,g[i],height*3/4+70);
     
     //blue pannel
     stroke(0,0,b[i]);
     line(b[i],height*3/4+80,b[i],height*3/4+110);
   }
 }
 
 void selectColors(){
   rectMode(CENTER);
   noStroke();
   fill(255);
   int xR=0,xG=0,xB=0;//bar no genzaiti(iro)
   rect(xR,height*3/4+15,10,30);
   rect(xG,height*3/4+55,10,30);
   rect(xB,height*3/4+95,10,30);
 }
}