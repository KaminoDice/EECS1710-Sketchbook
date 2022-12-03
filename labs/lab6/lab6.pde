// Lab 6 - lab6.pde
// ======================================
// Student ID: 
// First Name:
// EECS User Name (not password):
// ======================================



// LAB6.PDE  <- your main file for this lab

/////////////////////////////////////////////////////////////////////////////////////
// Working with Images
//
//   - uncomment and run each question() method (separately) to run each part
//   - you should not have to modify these question methods 
//        (but you can comment/uncomment some statements to skip them while testing)
//
/////////////////////////////////////////////////////////////////////////////////////


void setup() {
  
  //size(500,500);          // size for question 2
  //size(500,354);
  //size(450,900);        // size for 3 images of "temple.jpg" (question 3)
  size(640,1080);       // size for 3 images of "yogaBike.jpg" (question 3)
  
  
  surface.setTitle("lab6");
  
  
  imageMode(CENTER);
 
  //question1();
  //question2();
  question3();

  
}
