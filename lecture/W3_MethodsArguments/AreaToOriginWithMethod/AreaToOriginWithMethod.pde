// AreaToOriginWithMethod.pde

int rectWidth = 0;
int rectHeight = 0;

void setup() {
  size(640, 480);
  
}
void draw() {

  background(255, 255, 255);
  fill(0, 0, 0);
  rect(0, 0, rectWidth, rectHeight);
  rectWidth = mouseX;
  rectHeight = mouseY;
}

void mousePressed() {
  int area = areaRect(rectWidth, rectHeight);
  print("Area = ");
  println(area);
}

int areaRect(int rectW, int rectH) {
  int area;
  area = rectW * rectH;
  return area;
}
