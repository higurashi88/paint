pannel pannel;
canvas canvas;
Cursor Cursor;
ToolList toolList;
SaveFile SF;

int rX,rY,gX,gY,bX,bY;
int r=0,g=0,b=0;
int stroke,strokeY;
String toolType="pencil";//tool type

void setup(){
  size(1500,1000);
  background(200);
  pannel = new pannel();
  canvas = new canvas();
  Cursor = new Cursor();
  toolList = new ToolList(); 
  SF = new SaveFile();
  
  rX=0;gX=0;bX=0;//colorPannelLocation
  stroke=0;strokeY=height*3/4-40+15;//strokeWeight;
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
  r=255-rX;//red
  
  //get green color
  Cursor.create(gX,gY);
   if(gY-15<mouseY && mouseY+15<gY+30){
    gX=Cursor.carsorLoc(gX);
  }
  g=255-gX;//green
  
  //get blue color
  Cursor.create(bX,bY);
   if(bY-15<mouseY && mouseY+15<bY+30){
     bX=Cursor.carsorLoc(bX);
  }
  b=255-bX;//blue
  
  //stroke weight
  Cursor.create(stroke,strokeY);
   if(strokeY-15<mouseY && mouseY+15<strokeY+30){
     stroke=Cursor.carsorLoc(stroke);
  }
  
  //if on canvas get tool
  if(canvas.OnCanvas()==true)toolList.List(toolType,r,g,b);
}

void keyPressed(){
  //save
  if(key=='s'){
    SF.saving();
  }
}