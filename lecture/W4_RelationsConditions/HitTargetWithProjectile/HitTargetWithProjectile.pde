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

float targetX;
float targetY;
float targetR;

float v0 = 80;
float theta = radians(-45);

float t = 0;

void setup() {
  size(640, 480);
  generateTarget();
}

void moveProjectile(float x0, float y0, float v0, float theta, float t) {
  background(255, 255, 255);
  float x = x0 + v0*t*cos(theta);
  float y = y0 + v0*t*sin(theta) + 0.5*GRAVITY*pow(t, 2) ;
  noFill();
  stroke(0,0,255);
  ellipseMode(RADIUS);
  circle(x, y, 10);
  line(x0,y0,x1,y1);
  
  println("(" + x + ", " + y + ") hit target = " + hitTarget(x,y));
  
}
void draw() {
  t+=0.05;
  moveProjectile(x0,y0,v0,theta,t);
  drawTarget();
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

void generateTarget() {
  targetX = random(width/4,3*width/4);
  targetY = random(height/4, 3*height/4);
  targetR = random(100);
}

void keyPressed() {
 generateTarget(); 
}
void drawTarget() {
  stroke(0,0,0);
  fill(255,0,0);
  ellipseMode(RADIUS);
  circle(targetX,targetY,targetR);
  fill(255,255,255);
  circle(targetX,targetY,2*targetR/3);
  fill(255,0,0);
  circle(targetX,targetY,targetR/3);
}

boolean hitTarget(float posX, float posY) {
 return sqrt(pow(posX-targetX,2)+pow(posY-targetY,2))<=targetR;
}

 
