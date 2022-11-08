// Concentric Circles 2 (includes while loop version, and decaying radius between circles version)


final int NUM_ITER = 10;
final int INIT_RADIUS = 200;
int startX;
int startY;
int radius = INIT_RADIUS;

void setup() {
  size(640, 480);
  startX = width/2;
  startY = height/2;

  ellipseMode(RADIUS);
  background(255, 255, 255);
  noFill();

  drawRingsDecayingRadius(radius);
  
}

void draw() {
}

void mousePressed() {
  startX = mouseX;
  startY = mouseY;
  drawRingsDecayingRadius(random(INIT_RADIUS/2,INIT_RADIUS));
}

void drawRings(float radius) {
  // IMPLEMENTATION WITH WHILE LOOP
  int i = 0; 
  while (i<NUM_ITER) {
    circle(startX, startY, radius);
    radius = radius - 10;
    i++;
  }
}


void drawRingsDecayingRadius(float radius) {
  //IMPLEMENTATION WITH WHILE LOOP
  int i=0;
  while(i<=NUM_ITER) {
    circle(startX, startY, radius);
    radius =  0.9*radius;
    i++;
  }
}
