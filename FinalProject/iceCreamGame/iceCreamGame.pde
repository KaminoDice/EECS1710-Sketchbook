// Ice Cream Game
// Made by: Huanrui Cao, Duong Tran, Nhat Tin Tran, Calista Butera

// imports
import processing.sound.*;
AudioSample correct1;
AudioSample correct2;
AudioSample incorrect;

String order_string = "";
int[] orderOutput;
int[] ice_making = new int[3];
int[] order = new int[3];

// variables to indicate whether or not the start screen / instructions method is the current screen
boolean START_SCREEN = false;
boolean INSTRUCTIONS = false;
boolean KEY_REFERENCE = false;
boolean GAME_PLAYING = false;
boolean ORDER_CHECK = false;

// PFont object
PFont font;
PGraphics ice_holder, ice_flavour, ice_topping;

void setup() {
  size(900, 600);
  background(255, 255, 255);
  
  // generating sound for correct order
  float[] correctSound1 = generateSound(DURATION/2, CORRECT1_FREQ, SAMPLE_RATE);
  correct1 = new AudioSample(this, correctSound1, SAMPLE_RATE);
  float[] correctSound2 = generateSound(DURATION/2, CORRECT2_FREQ, SAMPLE_RATE);
  correct2 = new AudioSample(this, correctSound2, SAMPLE_RATE);

  // sound for incorrect order
  float[] incorrectSound = generateSound(DURATION, INCORRECT_FREQ, SAMPLE_RATE);
  incorrect = new AudioSample(this, incorrectSound, SAMPLE_RATE);
  
  // START SCREEN
  displayStartScreen();
  
  ice_holder = createGraphics(width,height,JAVA2D);
  ice_flavour = createGraphics(width,height,JAVA2D);
  ice_topping = createGraphics(width,height,JAVA2D);
  // method call to DISPLAY INSTRUCTIONS
  //displayInstructions();
  order = order();
}



void draw() {
  if (GAME_PLAYING){
    loop();
    background(255,255,255);
    gameSetup();
    icecream_making();
    if (ORDER_CHECK){
      if ((order[0]+1 == ice_making[0]) && (order[1]+1 == ice_making [1]) && (order[2]+1 == ice_making[2])){
        renderCorrectScreen(); 
      }else{
        renderIncorrectScreen();
      }
      noLoop();
    }
  }
  
}

void mousePressed() {
  if ((mouseX >= 315 && mouseX <= (315+270)) && (mouseY >= 300 && mouseY <= (300+70)) && START_SCREEN == true) {
    displayInstructions();
    START_SCREEN = false;
    KEY_REFERENCE = false;
  }
  if ((mouseX >= 830-(50/2) && mouseX <= 830+(50/2)) && (mouseY >= 550-(50/2) && mouseY <= 550+(50/2)) && INSTRUCTIONS == true) {
    GAME_PLAYING = true;
  }
}

void keyPressed() {

  if (key == 'h' && INSTRUCTIONS == true) {
    displayKeyReference();
    INSTRUCTIONS = false;
    START_SCREEN = false;
  }
  if (key == 'b' && KEY_REFERENCE == true) {
    displayInstructions();
    KEY_REFERENCE = false;
    START_SCREEN = false;
  }

  if (key == 'd') {
    println("1. Holders:\n\'c\' for cone\n\'u\' for cup\n\'b\' for bowl");
    println("2. Flavours:\n\'s\' for strawberry\n\'o\' for chocolate\n\'v\' for vanilla\n\'m\' for mint");
    println("3. Toppings:\n\'e\' for cherry\n\'i\' for sprinkles\n\'w\' for waffle sticks\n\'p\' for pretzel");
    println("\nPress SpaceBar to check if the order is correct.");
    println("Press \'d\' at any time to display controls in the console.");
  }

  if (GAME_PLAYING){
      if (key == 'c'){
        ice_making[0] = 1; 
      }else if(key == 'u'){
        ice_making[0] = 2;
      }else if(key == 'b'){
        ice_making[0] = 3;
      }

      if (key == 's'){
        ice_making[1] = 1;
      }else if(key == 'o'){
        ice_making[1] = 2;
      }else if(key == 'v'){
        ice_making[1] = 3;
      }else if(key == 'm'){
        ice_making[1] = 4;
      }

      if(key == 'e'){
        ice_making[2] = 1;
      }else if(key == 'i'){
        ice_making[2] = 2;
      }else if(key == 'w'){
        ice_making[2] = 3;
      }else if(key == 'p'){
        ice_making[2] = 4;
      }

      if (key == ' '){
        ORDER_CHECK = true;
      }
  }

}
