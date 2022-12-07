
// global variables
final float DURATION = 1.0;
final int SAMPLE_RATE = 44100;
final int CORRECT1_FREQ = 659;
final int CORRECT2_FREQ = 880;
final int INCORRECT_FREQ = 146;
final int DELAY = 400;

//correct sound (*ding ding!*) ----------
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

float[] generateSound(float duration, int freq, int sampleRate) {
  
  float numSamples = duration * sampleRate;
  
  float[] sinewave = new float[int(numSamples)];
  
  for (int i = 0; i < numSamples-1; i++) {
    sinewave[i] = sin(TWO_PI*freq*i/sampleRate);
  }

  return sinewave;

}
