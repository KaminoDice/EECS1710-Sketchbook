/*
 print("Welcome to EECS1710 F2022 saikoro");
 size(250,250);
 line(10,10,100,200);
 ellipse(100,100,40,80);
 */
int centerX, centerY;
float a, b, c, d, e, f, g, h, k, x, y;

void setup() {
  size(800, 800);
  background(255);
  centerX = width/2;
  centerY = height/2;
}

void draw() {
  noStroke();
  fill(245, 155, 155, 50);
  circle(centerX, centerY, 475);
  fill(64,123,213, 120 );
  circle(centerX, centerY, 120 );
  fill(233,233);
  circle(centerX ,centerY, 24 );
  {
    stroke(1);
    x = 378;
    k = 125;
    y = 265;


    for (int i=1; i<361; i+=1) {
      a = radians(i);
      b = radians(i-1);
      c = a*x;
      d = b*x;

      e = (x-y)*cos(b)+k*cos(d);
      f = (x-y)*sin(b)+k*sin(d);

      g = (x-y)*cos(a)+k*cos(c);
      h = (x-y)*sin(a)+k*sin(c);
      line(centerX+e, centerY+f, centerX+g, centerY+h);
    }
  }
}
