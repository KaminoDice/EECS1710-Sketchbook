// RANDOM Circles with Random Colours

// CREATE RANDOMLY SIZED CIRCLES of RANDOM COLOURS in the APP WINDOW


float posX;    
float posY;
float radius;

void setup() {
  size(640, 480);
  background(255,255,255);
}

void draw() {
  
  posX = random(0,width);
  posY = random(0,height);
  radius = random(100);
  
  fill( floor(random(0,256)), floor(random(0,256)), floor(random(0,256)) );
  circle(posX, posY, radius);
  
  //delay(1000);
}
