
void setup() {
  size(250,250);
}

void draw() {
  background(255,255,255);
  ellipse(mouseX,mouseY,100,50); 
}

void mousePressed() {
  stroke(mouseX,mouseY,0);
  strokeWeight(mouseX/255.0*20);
}
