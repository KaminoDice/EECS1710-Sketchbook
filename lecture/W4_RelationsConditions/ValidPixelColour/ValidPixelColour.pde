// isValidPixel()

boolean isValidColour(int col) {
  boolean valid = (col>=0) && (col<=255);
  return valid;
}

boolean isValidPixel(int r, int g, int b) {
  return (isValidColour(r) && isValidColour(g) && isValidColour(b));
}

void setup() {
  println("isValidPixel():");
  println("(150,58,33) -> " + isValidPixel(150, 58, 33));
  println("(150,358,33) -> " + isValidPixel(150, 358, 33));
  println("(-1,-100,256) -> " + isValidPixel(-1, -100, 256));
  println("(255,255,255) -> " + isValidPixel(255, 255, 255));
}

void draw() {
}
