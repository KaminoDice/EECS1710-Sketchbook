// Lab 5 - Question1.pde
// ======================================
// Student ID: 
// First Name:
// EECS User Name (not password):
// ======================================

// DO NOT INCLUDE ANY setup() or draw() routines here, these will be located in your main file

// Question 1:  Synthesizing Tones and Plotting


final int SAMPLE_RATE = 44100;
AudioSample myTone;
float[] tone440;
float[] tone580;
float[] tone820;

   

float[] generateTone(float duration, float freq, int sampleRate)  {
  
  // TO COMPLETE
  // see lab5.pdf for information
  int leng = int(duration*sampleRate);
  float[] toneWave = new float[leng];

  for (int i = 0; i < leng; i++){
    toneWave[i] = sin(TWO_PI*freq*i/sampleRate);
  }
  
  return toneWave;
}

   

void displayTone(float[] tone, int yPos, int num,  int amplitude, int colour, String mode) {


  // TO COMPLETE
  // see lab5.pdf for details
  float xSpacing = width/(float)num;
  stroke(colour);  
  if (mode == "CIRCLE"){
    for (int i=0; i<num; i++ ) {
      circle(i*xSpacing, yPos + tone[i]*amplitude, 2);
    }
  }else if(mode == "LINE"){
    for (int i=0; i<num; i++){
      line( i*xSpacing , yPos, i*xSpacing ,yPos + tone[i]*amplitude );
    }
  }
  
  
  
  
}
