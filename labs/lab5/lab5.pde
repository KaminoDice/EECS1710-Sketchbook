// Lab 5 - lab5.pde
// ======================================
// Student ID: SOLUTION
// First Name:
// EECS User Name (not password):
// ======================================



// LAB5.PDE  <- your main file for this lab
import processing.sound.*;


void setup() {
  size(600, 600);
  background(255, 255, 255);

  // calls to individual methods (questions in lab)
  // - uncomment each to run when you have setup/completed each associated method
  //float[] myTone = generateTone(1.5, 440, 44100);
  //AudioSample myToneSample; 
  //myToneSample = new AudioSample(this, myTone);
  //myToneAudio.play();
  tone440 = generateTone(1.5, 440, 44100);
  tone580 = generateTone(1.5, 580, 44100);
  tone820 = generateTone(1.5, 720, 44100);
  displayTone(tone440, height/6, 200, height/6, color(255, 0, 0), "CIRCLE");
  displayTone(tone580, height/2, 200, height/6, color(0, 255, 0), "CIRCLE");
  displayTone(tone820, 5*height/6, 200, height/6, color(0, 0, 255), "LINE");
  myTone = new AudioSample(this, 1);
  // QUESTION 1 method calls
  // =======================
  // synthesizing and plotting tones

  //myChirp = new AudioSample(this, generateChirp(5, 440, 0.9999));
  //myChirp.play();
  
  myChirpB = new AudioSample(this, chirpsBetween(2, 200, 1600, 10));
  myChirpB.play();
  

  // QUESTION 2 methods calls (comment other questions)
  // =======================
  // synthesizing chirps


  // QUESTION 3 methods
  // =======================
  // design a sound effect of your own
  // from other waveforms learned in class


  // QUESTION 4 methods
  // =======================
  // read text data from file to drive a simple tone generator
  // and create your own melody textfile as input
}



// USE THESE BELOW AS NEEDED


void draw() {
}



void keyPressed() {
  
  if (key == '1' && !myTone.isPlaying()) {
    //float[] tone440 = generateTone(1.5, 440, 44100);
    myTone = new AudioSample(this, tone440);
    myTone.play();
    
  } else if (key == '2' && !myTone.isPlaying()) {
    //float[] tone580 = generateTone(1.5, 580, 44100);
    myTone = new AudioSample(this, tone580);
    myTone.play();

  } else if (key == '3' && !myTone.isPlaying()) {
    //float[] tone820 = generateTone(1.5, 720, 44100);
    myTone = new AudioSample(this, tone820);
    myTone.play();

  }
}

void mousePressed() {
}
