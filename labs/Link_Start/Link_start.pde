PFont font;
float t;

void setup() {
  size(800, 800);
  backr();
}

void starburst() {
  for (int i=0; i < 361; i+=random(20)) {
    stroke(random(255), random(255), random(255));
    strokeWeight(random(10));
    t = radians(i);
    line(width/2, height/2, width/2+random(400)*sin(t), height/2+random(400)*cos(t));
    if (i == 10) {
      backr();
    }
    textAlign(CENTER);
    text("LINK START", width/2, height/2);
  }
}

void draw() {
  starburst();
}

void backr() {
  background(random(255));
  font = createFont("SAOUI-Bold.otf",random(128));
  textFont(font);
}

void mousePressed() {
  backr();
}
