// Ice Cream Game
// Made by: Huanrui Cao, Duong Tran, Nhat Tin Tran, Calista Butera

// imports
import processing.sound.*;
AudioSample correct1;
AudioSample correct2;
AudioSample incorrect;

// global variables
final float DURATION = 1.0;
final int SAMPLE_RATE = 44100;
final int CORRECT1_FREQ = 659;
final int CORRECT2_FREQ = 880;
final int INCORRECT_FREQ = 146;
final int DELAY = 800;

final int INCORRECT_COLOUR = color(229, 69, 69);
final int CORRECT_COLOUR = color(82, 229, 69);

// PFont object
PFont font;

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
  
  
  
  // correct sound (*ding ding!*) ----------
  //correct1.amp(0.5);
  //correct1.play();
  //correct2.amp(0.5);
  //delay(DELAY);
  //correct2.play();
  // ---------------------------------------
  
  // wrong sound (*boooonk!*) --------------
  //incorrect.amp(0.5);
  //incorrect.play();
  // ---------------------------------------
  
  
  // START SCREEN
  //displayStartScreen();
  
  
  // method call to DISPLAY INSTRUCTIONS
  //displayInstructions();
  
  
  
  
  
  //  --------------------------
// END SCREEN (correct or incorrect)
// if ([condition: ice cream was made incorrectly]) {
      //renderIncorrectScreen();
  // }
 
// if ([condition: ice cream was made CORRECTLY]) {
      //renderCorrectScreen();
  // }

  
}



void draw() {
  
}
