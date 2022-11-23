// Lab 5 - Question2.pde
// ======================================
// Student ID: 219256809
// First Name: Huanrui
// EECS User Name (not password): saikoro
// ======================================

// NOTE: You are NOT permitted to use ArrayList or IntList or anything other than primitive arrays for all parts of this question
AudioSample myChirp;
AudioSample myChirpB;
// Question 2:  Synthesizing a chirp!

float[] generateChirp(float duration, float freq, float freqFactor) {

  // TO COMPLETE (see lab5.pdf for details)
  int leng = int(duration*SAMPLE_RATE);
  float[] chirpWave = new float[leng];

  for (int i = 0; i < leng; i++) {
    freq = freq*freqFactor;
    chirpWave[i] = sin(TWO_PI*freq*i/SAMPLE_RATE);
  }

  return chirpWave;
}




float[] chirpsBetween(float duration, float f1, float f2, int repeats) {


  // TO COMPLETE (see lab5.pdf for details)
  int leng = int(duration*SAMPLE_RATE);
  float[] chirpBave = new float[leng];
  float[] chirpBaveLoop = new float[leng*repeats];
  float freq = f1;

  for (int i = 0; i < leng; i++) {
    freq = f1 + ((f2-f1)/(2.0*(float)leng))*i;
    chirpBave[i] = sin(TWO_PI*freq*i/SAMPLE_RATE);

  }

  for (int i = 0; i < repeats; i++) {
    if(i%2 == 0){
      for (int j = 0; j < leng; j++) {
        chirpBaveLoop[i*leng+j] = chirpBave[j] ;
      }
    }else{
      for (int j = 0; j < leng; j++) {
        chirpBaveLoop[i*leng+j] = chirpBave[leng-1-j] ;
      }
    }
  }
  
  return chirpBaveLoop;
  
}