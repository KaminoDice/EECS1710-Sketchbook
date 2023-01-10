void renderCorrectScreen() {
  PFont myFont;
  myFont = createFont("Georgia", 30);
  textFont(myFont);
  
  // coloured background
  noStroke();
  fill(CORRECT_COLOUR);
  rect(0, 0, width, height);
  
  renderBackgroundNoBanner();
  
  // text
  fill(255);
  textAlign(CENTER);
  textSize(80);
  text("Correct!", width/2, height/2.4);
  textAlign(CENTER);
  textSize(36);
  text("You have made a customer very happy! :)", width/2, (height/3)+height/4);
}
