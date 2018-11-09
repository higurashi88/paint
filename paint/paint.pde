colorPannel pannel;
canvas canvas;
createCarsor Create;
cursorMotion motion;

int locR,locG,locB;
int r,g,b;
int rX,rY,gX,gY,bX,bY;

void setup(){
  size(1500,1000);
  pannel = new colorPannel();
  canvas = new canvas();
  Create = new createCarsor();
  motion = new cursorMotion();
  
  rX=0;gX=0;bX=0;
  rY=height*3/4+15;gY=height*3/4+40+15;
  bY=height*3/4+80+15;
  locR =0;
  locG =0;
  locB =0;
  
}
void draw(){
  background(200);
  pannel.colorBar();
  canvas.drawArea();
  Create.create(rX,rY);
  if(rY-15<mouseY && mouseY+15<rY+30){
    rX=motion.carsorLoc(rX);
  }
  Create.create(gX,gY);
   if(gY-15<mouseY && mouseY+15<gY+30){
    gX=motion.carsorLoc(gX);
  }
  Create.create(bX,bY);
   if(bY-15<mouseY && mouseY+15<bY+30){
    bX=motion.carsorLoc(bX);
  }
}