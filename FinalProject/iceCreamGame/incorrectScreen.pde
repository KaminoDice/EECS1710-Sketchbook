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
  text("Incorrect!", width/2, 300);
  textAlign(CENTER);
  textSize(36);
  text("Make sure to follow the order correctly next time. :(", width/2, 350);
  
  // wrong sound (*boooonk!*) --------------
  incorrect.amp(0.5);
  incorrect.play();

  //TRY AGAIN BUTTON
  fill (205, 246, 232);
  stroke (247, 216, 186);
  strokeWeight(8);
  rect (315, 440, 270, 70);
  fill (252, 102, 111);
  textSize(30);
  text("PLAY AGAIN", width/2, 485);
}
