void renderFullBackground() {
  PFont myFont;
  myFont = createFont("Georgia", 30);
  textFont(myFont);

  //curtains 
  background (251, 164, 144);
  stroke (255);
  fill (255);
  circle(45, 90, 90);
  rect(0,0, 90, 90);
  circle(225, 90, 90);
  rect(180,0, 90, 90);
  circle(405, 90, 90);
  rect(360,0, 90, 90);
  circle(585, 90, 90);
  rect(540,0, 90, 90);
  circle(765, 90, 90);
  rect(720,0, 90, 90);

  fill (252, 102, 111);
  stroke (252, 102, 111);
  circle (135, 90, 90);
  rect(90,0, 90, 90);
  circle (315, 90, 90);
  rect(270,0, 90, 90);
  circle (495, 90, 90);
  rect(450,0, 90, 90);
  circle (675, 90, 90);
  rect(630,0, 90, 90);
  circle (855, 90, 90);
  rect(810,0, 90, 90);

  //store's banner
  fill (205, 246, 232);
  stroke (247, 216, 186);
  strokeWeight(8);
  rect (315, 30, 270, 70);
  fill (252, 102, 111);
  textSize(30);
  textAlign(CENTER);
  text("Ice-Cream Store", width/2, 75);

}

void renderBackgroundNoBanner() {
  
  //curtains 
  stroke (255);
  fill (255);
  circle(45, 90, 90);
  rect(0,0, 90, 90);
  circle(225, 90, 90);
  rect(180,0, 90, 90);
  circle(405, 90, 90);
  rect(360,0, 90, 90);
  circle(585, 90, 90);
  rect(540,0, 90, 90);
  circle(765, 90, 90);
  rect(720,0, 90, 90);

  fill (252, 102, 111);
  stroke (252, 102, 111);
  circle (135, 90, 90);
  rect(90,0, 90, 90);
  circle (315, 90, 90);
  rect(270,0, 90, 90);
  circle (495, 90, 90);
  rect(450,0, 90, 90);
  circle (675, 90, 90);
  rect(630,0, 90, 90);
  circle (855, 90, 90);
  rect(810,0, 90, 90);
}
