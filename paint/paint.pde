colorPannel pannel;
canvas canvas;

int locR,locG,locB;
int r,g,b;
int rX,rY,gX,gY,bX,bY;

void setup(){
  size(1500,1000);
  pannel = new colorPannel();
  canvas = new canvas();
  rX
  locR =0;
  locG =0;
  locB =0;
  
}
void draw(){
  background(200);
  pannel.colorBar();
  canvas.drawArea();
  
}