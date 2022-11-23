// Lab 5 - Question4.pde
// ======================================
// Student ID: 219256809
// First Name: Huanrui
// EECS User Name (not password): saikoro
// ======================================

// Question 4:  Read in data from sample1.txt and gen+play notes
// 
float[] noteWave = new float[0];
float[] lineWave;
AudioSample noteSample;

float[] noteRead(String noteFile){
    String[] noteList = readTextFile(noteFile);
    
    for (int i = 0; i < noteList.length; i++){
        
        String[] tokens = split(noteList[i], ' ');

        float keyNum = float(tokens[0]);
        float duration = float(tokens[1]);
        float freq = 440.00*pow(2,(keyNum/12));

        lineWave = decayWaveform(generateTone(duration, freq, SAMPLE_RATE ));

        noteWave = concat(noteWave, lineWave);
    }

    return noteWave;
    
}



// TO COMPLETE (specify your own method(s) here)
// create another version of your *.txt file called "myMelody.txt"
// read in its lines, and process them just like sample1.txt
String[] readTextFile(String fileName) {
  
    String[] lines = loadStrings(fileName);
    StringList content;  
    if (!(lines.length>0)) return null; 

    content = new StringList(); 
  
    for (int i=0; i<lines.length; i++) {
   
        if (!(lines[i].isEmpty()||lines[i].isBlank()) ) {          
        content.append(lines[i]); 
        }
    }
  
    return content.toArray();
  
  
}

float[] decayWaveform(float[] waveform) {

    float[] decayed = new float[waveform.length];
    float decaySamples;

    decaySamples = waveform.length;
    for (int i=0; i<decaySamples; i++) {
      decayed[i] = exp(-1.0*i/(0.25*decaySamples))*waveform[i];
    }
  
  return decayed;
}