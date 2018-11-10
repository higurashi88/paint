pannel pannel;
canvas canvas;
Cursor Cursor;
ToolList toolList;

int rX,rY,gX,gY,bX,bY;
String toolType="pencil";//tool type

void setup(){
  size(1500,1000);
  pannel = new pannel();
  canvas = new canvas();
  Cursor = new Cursor();
  toolList = new ToolList(); 
  
  rX=0;gX=0;bX=0;
  rY=height*3/4+15;gY=height*3/4+40+15;
  bY=height*3/4+80+15;
  
  //draw canvas
  canvas.drawArea();
}
void draw(){
  //draw color bar
  pannel.colorBar();
  
  //get red color
  Cursor.create(rX,rY);
  if(rY-15<mouseY && mouseY+15<rY+30){
    rX=Cursor.carsorLoc(rX);
  }
  
  //get green color
  Cursor.create(gX,gY);
   if(gY-15<mouseY && mouseY+15<gY+30){
    gX=Cursor.carsorLoc(gX);
  }
  
  //get blue color
  Cursor.create(bX,bY);
   if(bY-15<mouseY && mouseY+15<bY+30){
    bX=Cursor.carsorLoc(bX);
  }
  
  toolList.List(toolType);
  
}