// RANDOMLY PICK A NUMBER BETWEEN low & high (inclusive)


// random(high); or random(low,high);
float low = 0;
float high = 10;

void setup() {
}

void draw() {
  float guess = random(low, high+1);

  println("random real between (" + low + "," + high + ") = " + guess);
  println("random int  between (" + low + "," + high + ") = " + floor(guess));
}
