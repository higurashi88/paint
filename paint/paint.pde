Canvas canvas;
Pannel pannel;
int r=255,g=255,b=255;
int RY=1200,GY=1250,BY=1300;

void setup(){
  canvas = new Canvas();
  pannel = new Pannel();
 
  size(1500,1000);
  background(200);
  fill(r,g,b);
  stroke(r,g,b);
  canvas.PixelCanvas();
}

void draw(){
  pannel.createPannel(RY,0,255,255);
  canvas.reloadPixelCanvas(r,g,b);
}