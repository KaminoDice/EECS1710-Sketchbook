// ======================================
// Lab 1
// Question 1 (time/distance calculation)
// ======================================
// Student ID: 
// First Name: 
// EECS User Name (not password): 
// ======================================

// [ 8 marks ]

// INSERT VARIABLES & CONSTANTS HERE  (add to or modify as needed)
//  notes:
//      -> make sure you fill out your details at the top of this file
//      -> do NOT rename this sketch file (update and complete it before submitting)
//      -> constants use uppercase, with words seperated by underscore '_'
//      -> constants include "final" keyword in declaration which means variable can only be assigned to once
//      -> once assigned (initialized), a constant can be used like a variable


final int MINS_PER_HOUR   = 60;    // this constant is given for you
final float distance = 540.8;                  // you can rename/declare/set these as you wish
int   velocityPersonA = 78;           // you will also need to add extra variables
float timeTakenPersonA;
int velocityPersonB = 112;


timeTakenPersonA = distance/velocityPersonA;
float timeAMIN = distance/velocityPersonA*MINS_PER_HOUR;
float timeBMIN = distance/velocityPersonB*MINS_PER_HOUR;
float timeSave = timeAMIN - timeBMIN;

println("The time for Person A to travel " + distance + "km @ " + velocityPersonA + "km/hr is " + timeTakenPersonA + " hours.");
print("If travelling @ " + velocityPersonB + "km/hr, Person B will save " + timeSave + " minutes!");

// INSERT YOUR CODE BELOW TO COMPUTE & DISPLAY RESULTS TO CONSOLE
//  notes:  
//       -> Follow instructions on lab1.pdf
//       -> Velocity = Distance/Time  (assumes constant velocity)
