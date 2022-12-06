void displayStartScreen() {
  START_SCREEN = true;
  
  PFont myFont;
  myFont = createFont("Georgia", 30);
  textFont(myFont);
  text("!@#$%", width/2, height/2);

  renderFullBackground();
  
  // welcome text
  textAlign(CENTER);
  fill(255);
  text("Welcome to the Ice-Cream Store! :)", width/2, height/2.3);
  
  //START BUTTON
  fill (205, 246, 232);
  stroke (247, 216, 186);
  strokeWeight(8);
  rect (315, 300, 270, 70);
  fill (252, 102, 111);
  textSize(30);
  text("START!", width/2, 345);
  
}
