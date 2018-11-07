colorPannel pannel;
canvas canvas;

int locR,locG,locB;
int r,g,b;

void setup(){
  size(1500,1000);
  pannel = new colorPannel();
  canvas = new canvas();
  locR =0;
  locG =0;
  locB =0;
  
}
void draw(){
  background(200);
  pannel.colors();
  canvas.drawArea();
  if(abs(height*3/4+15-mouseY)<=30){
    pannel.pannelBar(locR,locG,locB);
  }else if(abs(height*3/4+15-mouseY)<=30){
    
  }else if(abs(height*3/4+15-mouseY)<=30){
    
  }
}