// Lab 6 - lab6.pde
// ======================================
// Student ID: 
// First Name:
// EECS User Name (not password):
// ======================================


// QUESTION3.PDE  <- instagram filters (sepia and edge)

////////////
// RUBRIC  [ 20 marks ]
//


void question3() {
  
  // UNCOMMENT/COMMENT method calls or input image as needed to test methods

  PImage orig = loadImage("temple.jpg");
  println("temple.jpg -> " + orig.width + " x " + orig.height);
  
  //PImage orig = loadImage("yogaBike.jpg");
  //println("yogaBike.jpg -> " + orig.width + " x " + orig.height);
  
  
  imageMode(CORNER);
  image(orig, 0, 0);
  
  image(sepiaImage(orig), 0, orig.height);
  image(edgeImage(orig,50), 0, orig.height*2);
  
  
}



PImage sepiaImage(PImage image) {
  PImage img1 = image.copy();
  PImage img2 = createImage(image.width, image.height, RGB);
  img1.filter(GRAY); 
  // METHOD TO COMPLETE
  for (int i=0; i<img1.width; i++){
    for (int j=0; j<img1.height; j++){
      float red = red(image.get(i,j));
      float green = green(image.get(i,j));
      float blue = blue(image.get(i,j));
      if (img1.get(i,j)<color(60)){
        img2.set(i,j,color(red*0.9,green*0.9,blue*0.9));
      }else if(img1.get(i,j)<color(190)){
        img2.set(i,j,color(red,green,blue*0.7));
      }else{
        img2.set(i,j,color(red,green,blue*0.9));
      }
    }
  }

  return img2;  // change this to return a new PImage object
  
}



PImage edgeImage(PImage image, int thresh) {
  PImage img1 = createImage(image.width, image.height, RGB);
  
  // METHOD TO COMPLETE
  for (int x=0; x<image.width; x++){
    for (int y=0; y<image.height; y++){
      float topAvg = (red(image.get(x,y)) +green(image.get(x,y)) +blue(image.get(x,y)))/3.0;
      float bottomAvg = (red(image.get(x,y+1)) +green(image.get(x,y+1)) +blue(image.get(x,y+1)))/3.0;
      float rightAvg = (red(image.get(x+1,y))+green(image.get(x+1,y)) +blue(image.get(x+1,y)))/3.0;
      if (abs(topAvg - bottomAvg) > thresh||abs(topAvg - rightAvg )>thresh){
        img1.set(x,y,color(0));
      }else{ 
        img1.set(x,y,color(255));
      }
    }
  }
  
  
  
  
  
  return img1;  // change this to return a new PImage object
}
