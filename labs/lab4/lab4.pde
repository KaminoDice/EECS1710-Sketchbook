// Lab 4 - lab4.pde
// ======================================
// Student ID: 219256809
// First Name: Huanrui
// EECS User Name (not password): saikoro
// ======================================


// IMPORTANT =======================
//
// NOTE (PLEASE READ):  This lab is organized differently from previous labs - we are now trying to spread
// our single programs over several files (as they get bigger).  This will make things easier to manage.
//
// To do this, we will use the following structure:
//
//  1)  A Main File (In this case: lab4.pde) -> this file will include any global variables & constants
//      (though you can also keep constants and variables in the other files (if they are only relevant for that file),
//      and your primary methods (i.e. setup(), draw(), and any standard event methods like mousePressed()  etc.)
//
//  2)  Additional files (for each question), in which you will define any additional (user defined) methods
//      you need to create to complete each task.  Note: these are methods you name and add yourself.. sometimes
//      the lab will have the shell already defined for you (header + empty block), for you to fill in and complete
//
//  **  in future, it is good practice to try to organize your code in this manner.. remember, your methods (in other files)
//      will never get used by your program unless they are called from your setup(), draw() or event methods that
//      have been included within this main file.  Essentially you should think of it this way.  lab4.pde has the code
//      that provides all the entry points into your program..  everything starts from Main (specifically Main -> setup()).
//
//      So, if you are trying to trace your program to debug it... you start from setup() and trace line by line .. when a
//      method defined in one of the other files is called, then you jump to that method.. continue tracing, and when that
//      method completes, you return back to where it was called from in Main to continue tracing..
//
// =======================================


// lab4.pde


void setup() {
  size(600, 600);
  background(255, 255, 255);

  // calls to individual methods (questions in lab)
  // - uncomment each to run when you have setup/completed each associated method


  // QUESTION 1 method calls
  // =======================
  drawStraightCurveWeb(DEFAULT_STEPS);                        // web
  drawStraightCurveEye(DEFAULT_STEPS);                        // eye
  myStringArtwork();                                          // my string artwork



  // QUESTION 2 methods (uncomment the following to run question2() - which calls methods)
  // =======================
  question2();


  // QUESTION 3 methods
  // =======================
  //    put any methods to init the String array (dictionary) and to select the hidden work, 
  //    and methods to handle guesses in Question3.pde
  //      -> invoke initialization methods from setup() here
  //      -> invoke any reoccuring methods (like handling a user keypress/guess), from keyPressed or draw below
  //      -> be sure to use some flag variables to know when the guess is complete (word fully revealed), 
  //          and to track how many guesses have taken place 
  
}




void draw() {
    myStringArtwork();                                          // my string artwork
    delay(400);
}



void keyPressed() {
  
  
  
}
