class ToolList{
  void List(String type){
    float tmpX=mouseX,tmpY=mouseY;
    switch(type){
      case "pencil":
      tmpX=locX(tmpX);
      tmpY=locY(tmpY);
      pencil(tmpX,tmpY);
      break;
    }
  }
  
  void pencil(float x,float y){
    if(mousePressed==true){
      stroke(0);
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