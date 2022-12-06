void displayInstructions() {
  
  
  PFont myFont;
  myFont = createFont("Georgia", 30);
  textFont(myFont);
  
  renderFullBackground();
  
  // background box for text
  fill(255, 255, 255, 80);
  noStroke();
  rect(30, 150, 840, 365);
  
  
  // text
  fill(255);
  textAlign(LEFT);
  textSize(26);
  text("Welcome to the Ice-Cream Store!", width/18, height/3.3);
  text("Instructions:", width/18, height/2.7);
  text("Build an ice cream based on the order received.", width/18, height/2.3);
  text("Each piece of the ice cream has different options\n(example - toppings: cherry, waffle sticks, sprinkles, pretzel).\n"  
          + "Be sure to select the specific options indicated in the order.", width/18, height/1.9);
  text("Good luck!", width/18, height/1.35);
  text("Remember, more correct orders makes more happy customers!", width/18, height/1.2);
  
  
  // START BUTTON
  fill (205, 246, 232);
  stroke (247, 216, 186);
  strokeWeight(8);
  circle(830, 550, 50);
  fill(255);
  text("Click here to begin! >", 540, 560);
  
  // access controls menu
  textAlign(LEFT);
  textSize(20);
  text("Press \'h\' to view controls.", width/8, height/1.075);
}
