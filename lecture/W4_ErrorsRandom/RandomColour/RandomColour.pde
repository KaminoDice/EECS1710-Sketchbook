// Random background colour

// random(high); or random(low,high);
final float LOW = 0;
final float HIGH = 256;

void setup() {
  size(300,300);
}

void draw() {
  float red = floor(random(LOW, HIGH));    // floor ensures we never pick higher than 255
  float green = floor(random(LOW, HIGH));
  float blue = floor(random(LOW, HIGH));
  
  background(red,green,blue);
  
  //delay(100);

}
