Canvas canvas;
Pannel pannel;
Button button;
SaveFile saveFile;
int r=255,g=255,b=255;
int RY=800,GY=850,BY=900;

void setup(){
  canvas = new Canvas();
  pannel = new Pannel();
  button= new Button();
  saveFile= new SaveFile();
 
  size(1500,1000);
  background(200);
  fill(r,g,b);
  stroke(r,g,b);
  canvas.PixelCanvas();
}

void draw(){
  //red pannel
  pannel.createPannel(RY,1,0,0);
  r=pannel.cursor(r,RY);
  
  //green pannel
  pannel.createPannel(GY,0,1,0);
  g=pannel.cursor(g,GY);
  
  //blue pannel
  pannel.createPannel(BY,0,0,1);
  b=pannel.cursor(b,BY);
  
  //reload canvas
  canvas.reloadPixelCanvas(r,g,b);
  
  //save button
  if(button.button(50,50)==true)saveFile.saving();
}