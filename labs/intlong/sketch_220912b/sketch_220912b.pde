void setup(){
  size(500,500);
}

void draw(){
  background(233,233,233);
  ellipse(mouseX,mouseY,100,80);
}
  
void mousePressed(){
  stroke(mouseX,mouseY,0);
  strokeWeight(mouseX/255.0*10);
}
