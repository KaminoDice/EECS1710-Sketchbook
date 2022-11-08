// SimpleProjectileMotion.pde
//
// A simple example of projectile motion with some initial parameters
//   - circle launched at 45deg into the air, and drops toward "ground"
//   - a mouse click will reset time to t=0

final float GRAVITY = 9.8f;    // 9.8 m/s (in the direction of ground +y)

float x0 = 100f;              // assume launch velocity (vector) is line
float y0 = 400f;              // from (x0,y0) to (x1,y1)
float x1 = 150f;              // with speed as magnitude of this vector
float y1 = 350f;              // i.e. vector direction -> (50,-50)

// magnitude of launch velocity vector = sqrt( 50^2 + 50^2)
float v0 = sqrt( 2*pow(50, 2) );

// +theta when rotating from +x to +y
// -theta when rotating from +x to -y
// we use angle in degrees and convert to radians
// because sin() and cos() methods expect radians
float theta = radians(-45);

// initial time = 0 sec
float t  = 0f;

void setup() {
  size(800, 800);
}


void draw() {
  // repaint (clear) the screen to white
  background(255, 255, 255);

  // update time step (increase by 0.05 seconds per frame)
  t+= 0.05;

  // Move Projectile (x0,y0,v0,theta,t)  <- need these parameters
  // NOTE: calc. x,y at every draw (dont need to remember)

  float x = x0 + v0*t*cos(theta);                          // calc. new x
  float y = y0 + v0*t*sin(theta) + 0.5*GRAVITY*pow(t, 2) ; // calc. new y

  // show component terms for each calculation
  // println("x = " + nf(x, 3, 3) + ", y = " + nf(y, 3, 3));

  line(x0, y0, x1, y1);  // draw vo at start point (launch vector)
  circle(x, y, 20);      // draw object (circle) at new x,y

}

void mousePressed() {
  // reposition start time, use all same initial values
  t=0;
}
