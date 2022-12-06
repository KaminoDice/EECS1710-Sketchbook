final int INCORRECT_COLOUR = color(229, 69, 69);

void renderIncorrectScreen() {
  PFont myFont;
  myFont = createFont("Georgia", 30);
  textFont(myFont);
  
  // coloured background
  noStroke();
  fill(INCORRECT_COLOUR);
  rect(0, 0, width, height);
  
  renderBackgroundNoBanner();
  
  // text
  fill(255);
  textAlign(CENTER);
  textSize(80);
  text("Incorrect", width/2, height/2.4);
  textAlign(CENTER);
  textSize(36);
  text("Be sure to follow the order correctly next time.", width/2, (height/3)+height/4);
  
  // wrong sound (*boooonk!*) --------------
  incorrect.amp(0.5);
  incorrect.play();
}
