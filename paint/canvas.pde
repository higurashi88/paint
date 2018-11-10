class canvas{
  
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