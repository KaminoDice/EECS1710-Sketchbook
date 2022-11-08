// AreaMethod.pde

void areaRect(int sideW, int sideL) {
  int area = sideW * sideL;
  println("area = " + area); 
}

void setup() {
  size(640,480);
  
  fill(128,128,128);
  rect(150,100,350,300);
  noFill();
  areaRect(400,300);
  
  //fill(255,255,255);
  //textSize(40);
  //text("area = " + areaRect(400,300),200,200); 
}

void draw() {
  // no statements here (basically a static sketch)
}
