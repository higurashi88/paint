class ToolList{
  void List(String type){
    switch(type){
      case "pencil":
      pencil();
      break;
    }
  }
  
  void pencil(){
    if(mousePressed==true){
      fill(0);
      noStroke();
      ellipse(mouseX,mouseY,5,5);
    }
  }
  
}