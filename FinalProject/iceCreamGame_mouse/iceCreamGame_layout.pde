
PImage cup, cone, bowl;
PImage chocolate, strawberry, mint, vanilla;
PImage cherry, waffle, pretzel, sprinkles;

void setup () {
  size(900, 600);
  gameSetup();
  order();
  
  //load ingredients
  cup = loadImage("cup.png");
  cone = loadImage("cone.png");
  bowl = loadImage("bowl.png");
  chocolate = loadImage("chocolate.png");
  strawberry = loadImage("strawberry.png");
  mint = loadImage("mint.png");
  vanilla = loadImage("vanilla.png");
  cherry = loadImage ("cherry.png");
  waffle = loadImage ("waffleStick.png");
  sprinkles = loadImage ("sprinkles.png");
  pretzel = loadImage ("pretzel.png");
  
  //resize ingredients
  cup.resize(90,90);
  bowl.resize(90,70);
  cone.resize(90,90);
  strawberry.resize(90,90);
  chocolate.resize(90,90);
  mint.resize(90,90);
  vanilla.resize(90,90);
  cherry.resize(90,130);
  waffle.resize(110,90);
  pretzel.resize(90,90);
  sprinkles.resize(100,100);
  
  //place ingredients
  image(cup, 570, 55);
  image(cone, 675, 55);
  image(bowl, 790, 75);
  image(strawberry, 550, 250);
  image(chocolate, 635, 250);
  image(vanilla, 720, 250);
  image(mint, 805, 250);
  image(sprinkles, 570, 400);
  image(pretzel, 710, 410);
  image(cherry, 630, 450);
  image(waffle, 770, 490);
  
}
