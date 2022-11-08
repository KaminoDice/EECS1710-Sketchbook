// A rough capture of key presses that append
// the characters to the end of the string
// and display using the text() method

String str = "";

void setup() {
  size(800, 600);
  stroke(255, 255, 255);
  textSize(40);
}

void draw() {
  background(0, 0, 0);
  text(str, 100, 300);
}

void keyPressed() {
  // key is the character pressed and 
  // concatenated onto the current string str
  str += key;
}
