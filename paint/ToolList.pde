class ToolList{
  void List(String type, int r,int g, int b){
    float tmpX=mouseX,tmpY=mouseY;
    switch(type){
      case "pencil":
      tmpX=locX(tmpX);
      tmpY=locY(tmpY);
      pencil(tmpX,tmpY,r,g,b);
      break;
    }
  }
  
  void pencil(float x,float y,int r,int g,int b){
    if(mousePressed==true){
      stroke(r,g,b);
      strokeWeight(30);
      line(x,y,mouseX,mouseY);
    }
  }
  
  float locX(float x){
    x=mouseX;
    return x;
  }
  float locY(float y){
    y=mouseY;
    return y;
  }  
  
}