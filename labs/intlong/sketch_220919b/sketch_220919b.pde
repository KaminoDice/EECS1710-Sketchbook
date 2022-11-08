//println(2.8*5);
//println(14/5);
//println(1/5.0-6%4);
//ans = 5.0+(4.0-3.0)/5.0-2.0*3.0%4.0;
//println(5.0+(4.0-3.0)/5.0-2.0*3.0%4.0);
//println(2+1);

//int iVar =15;
//int lVar =2;
//float fVar= 7.6f- iVar / lVar;
//double dVar =1L/lVar+fVar/lVar;
//int result = (int)(100 * dVar);
//print(iVar+"\n"+lVar+"\n"+fVar+"\n"+dVar+"\n"+result);
/*
void setup() {
  size(500, 500); 
  stroke(255);
  background(#FFFFFF);
  noFill();
}

void draw() {

stroke((mouseX % 255), (mouseY % 255), ((mouseX * mouseY) % 255));
  strokeWeight(5);
line(mouseX,0, mouseX, height);
line(0, mouseY, width, mouseY);

}

// Run this program to learn how each of these functions
// relate to the others.

void draw() { } // Empty draw() needed to keep the program running

void keyPressed() {
  println("pressed " + int(key) + " " + keyCode);
}

void keyTyped() {
  println("typed " + int(key) + " " + keyCode);
}

void keyReleased() {
  println("released " + int(key) + " " + keyCode);
}
*/


// Click on the window to give it focus,
// and press the 'B' key.
/*
void draw() {
  if (keyPressed) {
    if (key == 'b' || key == 'B') {
      fill(0);
    }
  } else {
    fill(255);
  }
  rect(25, 25, 50, 50);
}
*/

int i =2;
int j=8;
boolean Ans = ((i<1)||(j>=10));
print(Ans);
