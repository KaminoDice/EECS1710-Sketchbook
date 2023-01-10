void displayStartScreen() {
  PFont myFont;
  myFont = createFont("Georgia", 30);
  textFont(myFont);
  text("!@#$%", width/2, height/2);

  renderFullBackground();
  
  // welcome text
  textAlign(CENTER);
  fill(255);
  text("Welcome to Ice-Cream Store! :)", width/2, height/2.3);
  
  //START BUTTON
  fill (16, 196, 134);
  stroke (255);
  strokeWeight(8);
  rect (315, 300, 270, 70);
  fill (255);
  textSize(30);
  text("START!", width/2, 345);
}
