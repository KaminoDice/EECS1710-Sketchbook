void displayInstructions() {
  PFont myFont;
  myFont = createFont("Georgia", 30);
  textFont(myFont);
  
  // coloured background
  noStroke();
  fill(255);
  rect(0, 0, width, height);
  
  renderFullBackground();
  
  // text
  fill(255);
  textAlign(LEFT);
  textSize(26);
  text("Welcome to Ice Cream Game!", width/18, height/3.3);
  text("Instructions:", width/18, height/2.7);
  text("Build an ice cream based on the order received.", width/18, height/2.3);
  text("Each piece of the ice cream has different options\n(example - toppings: cherry, waffle sticks, sprinkles, pretzel).\n"  
          + "Be sure to select the specific options indicated in the order.", width/18, height/1.9);
  text("Good luck!", width/18, height/1.35);
  text("Remember, more correct orders makes more happy customers!", width/18, height/1.2);
  
  
  // START BUTTON
  fill (16, 196, 134);
  strokeWeight(5);
  stroke(255);
  circle(830, 550, 50);
  fill(255);
  text("Press here to begin! >", 540, 560);
}
