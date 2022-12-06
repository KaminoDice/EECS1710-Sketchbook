void displayKeyReference () {
  
  
  PFont myFont;
  myFont = createFont("Georgia", 30);
  textFont(myFont);
  
  renderFullBackground();
  
  // background box for text
  fill(255, 255, 255, 80);
  noStroke();
  rect(80, 150, 745, 345);
  
  // text
  fill(255);
  textSize(26);
  textAlign(CENTER);
  text("Controls", width/2, height/3.3);
  text("1. Holders:\n\'c\' for cone\n\'u\' for cup\n\'b\' for bowl", width/4.2, height/2.5);
  text("2. Flavours:\n\'s\' for strawberry\n\'o\' for chocolate\n\'v\' for vanilla\n\'m\' for mint", width/2, height/2.5);
  text("3. Toppings:\n\'e\' for cherry\n\'i\' for sprinkles\n\'w\' for waffle sticks\n\'p\' for pretzel", width/1.3, height/2.5);
  text("Press SpaceBar to check if the order is correct.", width/2, height/1.35);
  text("Press \'d\' at any time to display controls in the console.", width/2, height/1.25);
  
  // go back to instructions
  textAlign(LEFT);
  textSize(20);
  text("Press \'b\' to go back.", width/8, height/1.075);
}
