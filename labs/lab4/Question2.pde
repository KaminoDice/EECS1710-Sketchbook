// Lab 4 - Question2.pde
// ======================================
// Student ID: 219256809
// First Name: Huanrui
// EECS User Name (not password): saikoro
// ======================================

// NOTE: You are NOT permitted to use ArrayList or IntList or anything other than primitive arrays for all parts of this question

// Question 2:  

void question2() {
  
  // DO NOT MODIFY THIS METHOD (EXCEPT FOR COMMENTING OUT METHOD CALLS TO TEST INDIVIDUALLY)

  final int NUM_ELEMENTS = 15; 
  int[] intSamples = {154, 12, 48, 174, 85, 251, 114, 164, 135, 88, 297, 9,  51, 95, 241};

  // RUNNING THESE SHOULD OUTPUT THE EXAMPLES SHOWN IN THE LAB DOCUMENT (comment out or change to test individual methods)
  
  showArray("intSamples", intSamples);
  
  println("=> average of intSamples = " + nf(average(intSamples),2,3));
  println("=> range of intSamples = " + range(intSamples));
  println("=> sum of intSamples within (110,200) = " + sumValuesInRange(110,200,intSamples) );
  println("=> sum of intSamples within (50,150) = " + sumValuesInRange(50,150,intSamples) );
  
  int[] intSamplesShuffled = shuffleElements(intSamples);
  showArray("intSamplesShuffled", intSamplesShuffled);
  
}


// 1) SHOW ARRAY

void showArray(String arrayName, int[] array) {

  // TO COMPLETE
  println("==========");
  println(arrayName+":");
  print("[ ");
  for (int i=0;i<array.length;i++){
    print( array[i]);
    if( i<array.length-1){ 
      print(", ");
    }
  } 
  println(" ]");
  println("==========");
}


// 2) FIND AVERAGE VALUE 

float average(int[] myA) {
  float sum_a = 0;
  // TO COMPLETE
  for (int i=0;i<myA.length;i++){
    sum_a = sum_a + myA[i];
  } 
  float avg = sum_a/myA.length;
  return avg;  // change this
}


// 3) FIND RANGE (Max-Min value)

int range(int[] myA) {

  int max_a = myA[0];
  int min_a = myA[0];
  // TO COMPLETE
  //int max_a = max(myA);
  //int min_a = min(myA);
  for (int i=1; i<myA.length; i++){
    if (myA[i] > max_a){
      max_a = myA[i];
    }else if(myA[i] < min_a ){ 
      min_a = myA[i];
    }
  }
  int range_a = max_a - min_a;
  return range_a;  // change this
}


// 4) SUM VALUES IN RANGE - i.e. only consider sum of values that fall in range min to max (inclusive)

int sumValuesInRange(int min, int max, int[] myA) {
 
  
  
  int sum_b = 0;
  // TO COMPLETE
  for(int i =0;i<myA.length;i++){
    if (myA[i]>min && myA[i]<max) {
      sum_b = myA[i] + sum_b;
    }
   }
  return sum_b; // change this
}


// 5) SHUFFLE ELEMENTS AROUND

int[] shuffleElements(int[] myA) {
 
  int[] shuffled = new int[myA.length];
  for (int i=0;i<myA.length;i++){
    shuffled[i] = myA[i];
  }
  
  // TO COMPLETE
  for(int i=0;i<myA.length*2;i++){
    int randIndex = ceil(random(myA.length-1));
    shuffled[0] = shuffled[0]+shuffled[randIndex];
    shuffled[randIndex] = shuffled[0] - shuffled[randIndex];
    shuffled[0] = shuffled[0] - shuffled[randIndex];
   }
  
  
  
  
  return shuffled;
  
  
}
