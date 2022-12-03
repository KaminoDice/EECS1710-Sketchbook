// Lab 6 - lab6.pde
// ======================================
// Student ID:
// First Name:
// EECS User Name (not password):
// ======================================



// QUESTION1.PDE  <- warmup exercises for nested loops

////////////
// RUBRIC  [ 10 marks ]
//



void question1() {

  // DO NOT MODIFY THIS METHOD (IT WILL CALL YOUR COMPLETED METHODS TO TEST OUTPUT)

  println("showImageCoords(3, 4):");
  showImageCoords(3, 4);
  println();

  println("showImageCoords(7, 9):");
  showImageCoords(7, 9);
  println();

  println("showCartesianCoords(3, 4):");
  showCartesianCoords(3, 4);
  println();

  println("showCartesianCoords(7, 9):");
  showCartesianCoords(7, 9);
  println();
}


void showImageCoords(int imgWidth, int imgHeight) {

  // METHOD TO COMPLETE
  for (int i=0; i<imgHeight; i++) {
    for (int j=0; j<imgWidth; j++) {
      print("( "+ j + ", "+i+") ");
    }
    println();
  }
}


void showCartesianCoords(int imgWidth, int imgHeight) {

  // METHOD TO COMPLETE
  for (int i=imgHeight; i>0; i--) {
    for (int j=0; j<imgWidth; j++) {
      print("( "+ j + ", "+ (i-1) +") ");
    }
    println();
  }
}
