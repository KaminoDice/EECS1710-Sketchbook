// Ice Cream Game
// Made by: Huanrui Cao, Duong Tran, Nhat Tin Tran, Calista Butera



void setup() {
  size(900, 600);
  background(255, 255, 255);
  correct1 = new AudioSample(this, correctSound1, SAMPLE_RATE);
  correct2 = new AudioSample(this, correctSound2, SAMPLE_RATE);
  incorrect = new AudioSample(this, incorrectSound, SAMPLE_RATE);

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
  chocolateSyrup = loadImage("chocolateSyrup.png");
  strawberrySyrup = loadImage("strawberrySyrup.png");
  caramelSyrup = loadImage("caramelSyrup.png");
  bubblegumSyrup = loadImage ("bubblegumSyrup.png");
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
  chocolateSyrup.resize(90,90);
  strawberrySyrup.resize(90,90);
  bubblegumSyrup.resize(90,90);
  caramelSyrup.resize(90,90);
  cherry.resize(90,130);
  waffle.resize(110,90);
  pretzel.resize(90,90);
  sprinkles.resize(100,100);

  //place ingredients
  image(cup, 570, 25);
  image(cone, 675, 25);
  image(bowl, 790, 45);
  image(strawberry, 550, 150);
  image(chocolate, 635, 150);
  image(vanilla, 720, 150);
  image(mint, 805, 150);
  image(chocolateSyrup, 550, 280);
  image(bubblegumSyrup, 635, 280);
  image(strawberrySyrup, 720, 280);
  image(caramelSyrup, 805, 280);
  image(sprinkles, 570, 400);
  image(pretzel, 710, 410);
  image(cherry, 630, 450);
  image(waffle, 770, 490);
}

void draw() {
  
}

void keyPressed(){
  if (key == '1' ){
    correct1.amp(0.5);
    correct1.play();
    delay(DELAY);
    correct2.amp(0.5);
    correct2.play();
  }else if(key == '3'){
    incorrect.amp(0.5);
    incorrect.play();
  }
}
