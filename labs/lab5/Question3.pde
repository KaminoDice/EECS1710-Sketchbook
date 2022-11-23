// Lab 5 - Question3.pde
// ======================================
// Student ID: 219256809
// First Name: Huanrui
// EECS User Name (not password): saikoro
// ======================================

// Question 3:  Design your own custom sound effect 
//            (from manipulating and combining waveforms - tones, noise, other)


float[] myWave;
AudioSample mySE;

float[] genSoundEffect( float duration, int sampleRate, float freq ) {
  float section = duration/8;
  int leng = int(section*sampleRate);
  float[] sineWave1 = generateTone(section, freq, sampleRate);
  float[] sineWave2 = generateTone(section, freq*2, sampleRate);

  float[] chirpWave = generateChirp(section, freq*4, 0.999);
  float[] chirpsBetween = chirpsBetween(section, freq, freq*3, 4);

  float[] whiteNoise = new float[leng];
  for (int i=0;i < leng;i++){
    whiteNoise[i] = random(2)-1;
  }

  float[] squareWave = new float[leng];
  for (int i =0; i<leng; i++){
    float sineValue = sin(TWO_PI*freq*(i%sampleRate)/sampleRate);
    if(sineValue>0){
      squareWave[i] = 1.0;
    }else if(sineValue<0){
      squareWave[i] = -1.0;
    }else{
      squareWave[i] = 0;
    }
  }

  //float[] sawWave = new float[leng];
  //float[] trianWave = new float[leng];
  // TO COMPLETE
  myWave = concat( addWaveforms(whiteNoise, 0.3, sineWave1, 0.3), sineWave1);
  myWave = concat( myWave, sineWave2);
  myWave = concat(myWave, addWaveforms(sineWave1,0.3,sineWave2,0.6));
  myWave = concat(myWave, addWaveforms(chirpWave,0.5, squareWave,0.3));
  myWave = concat(myWave, chirpsBetween);
  myWave = concat(myWave, squareWave);
  myWave = concat(myWave, whiteNoise);

  return myWave;
  
}

float[] addWaveforms(float[] w1, float a1, float[] w2, float a2) {
 float[] wResult = new float[w1.length];
  
 if (w1.length == w2.length) {
   // add them
   for (int i=0; i<wResult.length; i++) {
     wResult[i] = a1*w1[i] + a2*w2[i];
   }
 }
  
 return wResult; 
}

