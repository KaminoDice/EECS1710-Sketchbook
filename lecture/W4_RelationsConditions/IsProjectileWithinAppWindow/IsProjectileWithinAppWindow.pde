// ProjectileMotion.pde
//
// More complex version of Simple Projectile Motion 
//  -  uses the mousePressed() + mouseDragged() blocks to create a new xo,yo and vo
//  -  vo is computed based on a new x1,y1 (mouse position while dragging)

// There are some issues - see if you can find any unexpected behaviour

final float GRAVITY = 9.8;    // 9.8 m/s (assume ground is 

float x0 = 100;
float y0 = 400;
float x1 = 150;
float y1 = 350;

float v0 = 80;
float theta = radians(-45);

float t = 0;

void setup() {
  size(600, 600);
}

void moveProjectile(float x0, float y0, float v0, float theta, float t) {
  background(255, 255, 255);
  float x = x0 + v0*t*cos(theta);
  float y = y0 + v0*t*sin(theta) + 0.5*GRAVITY*pow(t, 2) ;
  circle(x, y, 20);
  line(x0,y0,x1,y1);
  
  println("(" + x + ", " + y + ") isWithin = " + isWithin(x,y));
  
}
void draw() {
  t+=0.05;
  moveProjectile(x0,y0,v0,theta,t);
}

void mousePressed() {
  x0 = mouseX;
  x1=x0;
  y0 = mouseY;
  y1=y0;
  
  t=0;
  v0 = sqrt(pow(x1-x0, 2)+pow(y1-y0, 2));
  theta = atan( (y1-y0) / (x1-x0) );
  
}

void mouseDragged() {
  x1 = mouseX;
  y1 = mouseY;
  t = 0;
  
  v0 = sqrt(pow(x1-x0, 2)+pow(y1-y0, 2));
  theta = atan( (y1-y0) / (x1-x0) );

  // fix for negative x aim
  if ((x1<x0)&&(y1>y0)) theta = PI + theta ;
  if ((x1<x0)&&(y1<y0)) theta = -PI + theta ;
  
  println("v0 = " + v0 + ", theta = " + theta);
}

boolean isWithin(float posX, float posY) {
  boolean isInsideX = (posX>=0 && posX<=width);
  boolean isInsideY = (posY>=0 && posY<=height);
  return (isInsideX && isInsideY);
}

 
