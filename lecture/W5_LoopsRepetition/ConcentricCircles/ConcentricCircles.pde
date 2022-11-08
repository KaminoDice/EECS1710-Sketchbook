// Concentric Circles


final int NUM_ITER = 10;
final int INIT_RADIUS = 200;
int startX;
int startY;
float radius = INIT_RADIUS;

void setup() {
  
  size(640, 480);
  startX = width/2;
  startY = height/2;

  ellipseMode(RADIUS);
  background(255, 255, 255);
  noFill();

  drawRings(radius);

}

void draw() {
}

void mousePressed() {
  startX = mouseX;
  startY = mouseY;
  drawRings(random(INIT_RADIUS/2,INIT_RADIUS));
  

}

void drawRings(float radius) {
  for (int i=0; i<NUM_ITER; i++) {
    circle(startX, startY, radius);
    radius = radius - 10;
  }
}
