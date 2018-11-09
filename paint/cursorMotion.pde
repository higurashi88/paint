class cursorMotion{
 int carsorLoc(int locX){
   if(mousePressed==true){
     if(0<=mouseX && mouseX <=255){
       locX=mouseX;
     }
   }
   return locX;
 }
 
}