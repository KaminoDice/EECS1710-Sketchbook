// ProjectileMotion.pde
//
// More complex version of Simple Projectile Motion 
//  -  uses the mousePressed() + mouseDragged() blocks to create a new xo,yo and vo
//  -  vo is computed based on a new x1,y1 (mouse position while dragging)

// There are some issues with this version 
//   - see if you can find any unexpected behaviour
//   - can you fix the unexpected behaviour??  
//   - solution in ProjectileMotionWithFix.pde

final float GRAVITY = 9.8;    // 9.8 m/s (assume ground is 

float x0 = 100;
float y0 = 400;
float x1 = 150;
float y1 = 350;

float v0 = 80;
float theta = radians(-45);

float t = 0;

void setup() {
  size(800, 800);
}

void moveProjectile(float x0, float y0, float v0, float theta, float t) {
 
  
  float x = x0 + v0*t*cos(theta);
  float y = y0 + v0*t*sin(theta) + 0.5*GRAVITY*pow(t, 2) ;
  circle(x, y, 20);
  line(x0,y0,x1,y1);
}

// INVOKES moveProjectile method to draw new projectile position
// based on the updated (incremented) value of t
void draw() {
   background(255, 255, 255);
   t+=0.05;
   moveProjectile(x0,y0,v0,theta,t);
}

// RESET THE INITIAL POSITION OF THE PROJECTILE 
// to the mouse location, with zero velocity Vo, theta=0 deg
void mousePressed() {
  x0 = mouseX;
  x1=x0;
  y0 = mouseY;
  y1=y0;
  
  t=0;
  v0 = 0;
  theta = 0;
  
}

// CLICKING MOUSE AND DRAGGING WILL GENERATE A LAUNCH VECTOR Vo
void mouseDragged() {
  
  // get the current mouse position and keep t at zero while moving mouse
  x1 = mouseX;
  y1 = mouseY;
  t = 0;
  
  // calculates the magniture of Vo
  v0 = sqrt(pow(x1-x0, 2)+pow(y1-y0, 2));
  
  // calculates the angle theta of the velocity vector
  // as the inverse tan of the y component / x component of Vo
  theta = atan( (y1-y0) / (x1-x0) );
  
  println("v0 = " + v0 + ", theta = " + theta);
  
}

 
