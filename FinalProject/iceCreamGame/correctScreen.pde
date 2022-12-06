//final int CORRECT_COLOUR = color(82, 229, 69);
final int CORRECT_COLOUR = color(133,197,128);

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

  //correct sound (*ding ding!*) ----------
  correct1.amp(0.5);
  correct1.play();
  correct2.amp(0.5);
  delay(DELAY);
  correct2.play();
}
