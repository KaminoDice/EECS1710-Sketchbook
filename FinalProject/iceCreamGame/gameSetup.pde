PImage cup, cone, bowl;
PImage chocolate, strawberry, mint, vanilla;
PImage cherry, waffle, pretzel, sprinkles;

void gameSetup() {
  
  PFont myFont;
  myFont = createFont("Georgia", 30);
  textFont(myFont);

  //curtains
  background (251, 164, 144);
  stroke (255);
  fill (255);
  circle(45, 90, 90);
  rect(0, 0, 90, 90);
  circle(225, 90, 90);
  rect(180, 0, 90, 90);
  circle(405, 90, 90);
  rect(360, 0, 90, 90);
  circle(585, 90, 90);
  rect(540, 0, 90, 90);
  circle(765, 90, 90);
  rect(720, 0, 90, 90);

  fill (252, 102, 111);
  stroke (252, 102, 111);
  circle (135, 90, 90);
  rect(90, 0, 90, 90);
  circle (315, 90, 90);
  rect(270, 0, 90, 90);
  circle (495, 90, 90);
  rect(450, 0, 90, 90);
  circle (675, 90, 90);
  rect(630, 0, 90, 90);
  circle (855, 90, 90);
  rect(810, 0, 90, 90);

  //store's banner
  fill (205, 246, 232);
  stroke (247, 216, 186);
  strokeWeight(8);
  rect (135, 30, 270, 70);
  fill (252, 102, 111);
  textSize(30);
  textAlign(LEFT);
  text("Ice-Cream Store", 165, 75);

  //Store's counter
  fill (186, 151, 133);
  stroke (247, 216, 186);
  rect (540, 2, 400, 595);
  line (540, 200, 900, 200);
  line (540, 390, 900, 390);

  //Order board
  fill (24, 77, 71);
  rect(90, 470, 360, 150);

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
  cup.resize(90, 90);
  bowl.resize(90, 70);
  cone.resize(90, 90);
  strawberry.resize(90, 90);
  chocolate.resize(90, 90);
  mint.resize(90, 90);
  vanilla.resize(90, 90);
  cherry.resize(90, 130);
  waffle.resize(110, 90);
  pretzel.resize(90, 90);
  sprinkles.resize(100, 100);

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

  //order board
  fill (255);
  textSize(22);
  textAlign(CENTER);
  text (order_string, 110, 500, 320, 550);
}

void icecream_making(){
    if (GAME_PLAYING){
      switch(ice_making[0]){
        case 0:
          ice_holder.beginDraw();
          ice_holder.clear();
          ice_holder.endDraw();
          break;
        case 1:
          cone.resize(130,130);
          ice_holder.beginDraw();
          ice_holder.clear();
          ice_holder.image(cone,200,310);
          ice_holder.endDraw();
          break;
        case 2:
          cup.resize(130,130);
          ice_holder.beginDraw();
          ice_holder.clear();
          ice_holder.image(cup,200,310);
          ice_holder.endDraw();
          break;
        case 3:
          bowl.resize(130,110);
          ice_holder.beginDraw();
          ice_holder.clear();
          ice_holder.image(bowl,200,295);
          ice_holder.endDraw();
          break;
      }

      switch(ice_making[1]){
        case 0:
          ice_flavour.beginDraw();
          ice_flavour.clear();
          ice_flavour.endDraw();
          break;
        case 1:
          strawberry.resize(130,130);
          ice_flavour.beginDraw();
          ice_flavour.clear();
          ice_flavour.image(strawberry,200,200);
          ice_flavour.endDraw();
          break;
        case 2:
          chocolate.resize(130,130);
          ice_flavour.beginDraw();
          ice_flavour.clear();
          ice_flavour.image(chocolate,200,200);
          ice_flavour.endDraw();
          break;
        case 3:
          vanilla.resize(130,130);
          ice_flavour.beginDraw();
          ice_flavour.clear();
          ice_flavour.image(vanilla,200,200);
          ice_flavour.endDraw();
          break;
        case 4:
          mint.resize(130,130);
          ice_flavour.beginDraw();
          ice_flavour.clear();
          ice_flavour.image(mint,200,200);
          ice_flavour.endDraw();
          break;
      }

      switch(ice_making[2]){
        case 0:
          ice_topping.beginDraw();
          ice_topping.clear();
          ice_topping.endDraw();
          break;
        case 1:
          ice_topping.beginDraw();
          ice_topping.clear();
          ice_topping.image(cherry, 240, 120);
          ice_topping.endDraw();
          break;
        case 2:
          ice_topping.beginDraw();
          ice_topping.clear();
          sprinkles.resize(120, 120);
          ice_topping.image(sprinkles, 210, 200);
          ice_topping.endDraw();
          break;
        case 3:
          ice_topping.beginDraw();
          ice_topping.clear();
          ice_topping.image(waffle, 260, 170);
          ice_topping.endDraw();
          break;
        case 4:
          ice_topping.beginDraw();
          ice_topping.clear();
          ice_topping.image(pretzel, 240, 170);
          ice_topping.endDraw();
          break;
      }


    image(ice_holder,0,0);
    image(ice_flavour,0,0);
    image(ice_topping,0,0);
  }
}
