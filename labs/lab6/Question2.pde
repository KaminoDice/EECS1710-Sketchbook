// Lab 6 - lab6.pde
// ======================================
// Student ID: 
// First Name:
// EECS User Name (not password):
// ======================================


// QUESTION2.PDE  <- radial gradient and vignette/mask

////////////
// RUBRIC  [ 15 marks ]
//



// CONSTANTS - colours used in lab document are included here..

final int COL1 = color(241, 12, 141, 255);     // pinkish 
final int COL2 = color(134, 222, 25, 255);     // greenish

final int BACKGROUND = color(128,128,128,255); // gray opaque
final int FOREGROUND = color(128,128,128,0);   // gray transparent


void question2() {

  // UNCOMMENT method call for each part below to run
  
  int size = 500;
  background(BACKGROUND);
  
  PImage orig = loadImage("lassonde.jpg");
  println("lassonde.jpg = " + orig.width + " x " + orig.height);


  // part (a) - generate radial gradient (as per lab document)
  image(radialGradient(size, size, COL1, COL2), width/2, height/2 );
  
  
  // part (b) - apply radial vignette (as per lab document)
  applyRadialVignette(orig, size);
  
  
  // ALTERNATIVE part (b) - create and apply a special mask of your own design
  applySpecialMask(orig, size);
  
}



// PART A
PImage radialGradient(int sizeX, int sizeY,  int col1, int col2) {
  PImage img1 = createImage(sizeX, sizeY, ARGB);
  
  float centreX = (float)sizeX/2;
  float centreY = (float)sizeY/2;
  float maxRadius = sqrt( pow(centreX,2)+ pow(centreY,2) );
  // METHOD TO COMPLETE
  for (int i=0; i<img1.width; i++){
    for (int j=0; j<img1.height; j++){
      float distance = sqrt(pow(  centreX-i, 2)+pow(centreY-j,2));
      img1.set(i,j, lerpColor(col1, col2,2*distance/maxRadius ));
    }
  }
  
  
  return img1;  // change this to return a new PImage object
  
}


// PART B
void applyRadialVignette(PImage orig, int size) {
  float centreX = (float)width/2;
  float centreY = (float)height/2;
  // METHOD TO COMPLETE
  image(orig, centreX, centreY);
  image(radialGradient(width, height, FOREGROUND ,BACKGROUND), width/2, height/2 );
  
  save("q2composited.png");
  
}




// OPTIONAL ALTERNATIVE FOR PART B

void applySpecialMask(PImage orig, int size) {
  float centreX = (float)width/2;
  float centreY = (float)height/2;
  // METHOD TO COMPLETE (OPTIONAL)
  PImage maskorimg = createImage(width, height, ARGB);
  maskorimg = loadImage("yogaBike.jpg");
  image(maskorimg, centreX, centreY);
  filter(THRESHOLD); 
  PImage maskimg = createImage(width, height, ARGB);
  for (int i=0; i<width;i++){
    for (int j=0; j<height; j++){
      if (get(i,j) == -1){
        maskimg.set(i,j, color(0) );
      }else{
        maskimg.set(i,j, FOREGROUND);
      }
    }
  }
  image(orig, centreX, centreY);
  image(maskimg,centreX,centreY);
  save("Q2Alter.png");
}
