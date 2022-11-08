// AreaToOrigin.pde

/*
 a simple program to compute and store the area
 of a rectangle and displaying it to the console
 */

int rectWidth = 0;
int rectHeight = 0;
int area;

void setup() {
  size(640, 480);
}

void draw() {

  background(255, 255, 255);
  fill(0, 0, 0);
  rect(0, 0, rectWidth, rectHeight);

  rectWidth = mouseX;
  rectHeight = mouseY;

  area = rectWidth * rectHeight;
  print("Area = ");
  println(area);
}
