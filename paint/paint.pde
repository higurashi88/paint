colorPannel pannel;

int r,g,b;
void setup(){
  size(1500,1000);
  pannel = new colorPannel();
  
}
void draw(){
  background(200);
  pannel.colors();
  pannel.selectColors();
  
}