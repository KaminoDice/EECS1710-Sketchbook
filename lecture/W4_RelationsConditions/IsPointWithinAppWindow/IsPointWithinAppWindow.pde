// isWithin()

// tests to see if a point is inside the app window
boolean isWithin(float posX, float posY) {
  boolean isInsideX = (posX>=0 && posX<=width);
  boolean isInsideY = (posY>=0 && posY<=height);
  return (isInsideX && isInsideY);
}

// assume width=640, height=480
void setup() {
  size(640,480);

  println("isWithin(-1,0)    -> " + isWithin(-1,0));
  println("isWithin(641,480) -> " + isWithin(641,480));
  println("isWithin(1,1)     -> " + isWithin(1,1));
  println("isWithin(600,400) -> " + isWithin(600,400));
}

void draw() {
}
