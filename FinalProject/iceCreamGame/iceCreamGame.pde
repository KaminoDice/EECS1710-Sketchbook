// Ice Cream Game
// Made by: Huanrui Cao, Duong Tran, Nhat Tin Tran, Calista Butera



void setup() {
  size(900, 600);
  background(255, 255, 255);
  correct1 = new AudioSample(this, correctSound1, SAMPLE_RATE);
  correct2 = new AudioSample(this, correctSound2, SAMPLE_RATE);
  incorrect = new AudioSample(this, incorrectSound, SAMPLE_RATE);
}

void draw() {
  
}

void keyPressed(){
  if (key == '1' ){
    correct1.amp(0.5);
    correct1.play();
    delay(DELAY);
    correct2.amp(0.5);
    correct2.play();
  }else if(key == '3'){
    incorrect.amp(0.5);
    incorrect.play();
  }
}
