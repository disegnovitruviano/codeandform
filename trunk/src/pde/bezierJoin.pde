// BezierJoins.pde
// Marius Watz - http://workshop.evolutionzone.com
 
void setup() {
  size(400,400);
}
 
void draw() {
  background(200);
  noFill();
 
  float xD=width/2-mouseX;
  float yD=height/2-mouseY;  

  bezier(0,0,
    300,100,
    width/2-xD,height/2-yD,
    width/2,height/2);
 
  bezier(width/2,height/2,
    width/2+xD,height/2+yD,
    400,300,
    400,400);
}

