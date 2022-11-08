
final int INIT_RADIUS = 20;    // this is a constant
final int INIT_CENTERX = 150;
final int INIT_CENTERY = 150;

int radius = 20;
float alpha = 255;
int centreX = 150;  
int centreY = 150;

void setup(){
  size(300,300);
  ellipseMode(CENTER);
}

void draw() {
  background(255,255,255);
  ellipse(centreX,centreY,radius,radius);
  radius++;
  stroke(0,0,0,alpha);
  alpha*=0.99;
  
  
}

void mousePressed() {
 centreX = mouseX;
 centreY = mouseY;
 radius = 20;
 alpha = 255;
}
