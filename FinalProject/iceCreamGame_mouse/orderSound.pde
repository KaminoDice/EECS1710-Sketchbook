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

// generating sound for correct order
float[] correctSound1 = generateSound(DURATION/2, CORRECT1_FREQ, SAMPLE_RATE);

float[] correctSound2 = generateSound(DURATION/2, CORRECT2_FREQ, SAMPLE_RATE);

// sound for incorrect order
float[] incorrectSound = generateSound(DURATION, INCORRECT_FREQ, SAMPLE_RATE);

float[] generateSound(float duration, int freq, int sampleRate) {
  
  float numSamples = duration * sampleRate;
  
  float[] sinewave = new float[int(numSamples)];
  
  for (int i = 0; i < numSamples-1; i++) {
    sinewave[i] = sin(TWO_PI*freq*i/sampleRate);
  }

  return sinewave;

}
