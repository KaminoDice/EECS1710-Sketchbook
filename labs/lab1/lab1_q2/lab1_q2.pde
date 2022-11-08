// ======================================
// Lab 1
// Question 2 (adding formatting to Question 1)
// ======================================
// Student ID: 
// First Name: 
// EECS User Name (not password): 
// ======================================

// [ 4 marks ]


//  notes:
//      -> fill out name and student id info at top of this file
//      -> copy and paste all code from your answer to Question 1 into this sketch (paste below).
//      -> do NOT rename this sketch file (update and complete it before submitting)
//
//      -> in this task you need to format some of your output (see lab1.pdf)
//      -> useful methods/commands are nf(), nfs(), round(), int(), or you
//      -> can try to convert between types by promotion/demotion (casting) - see slides L5

final int MINS_PER_HOUR   = 60;    
final float distance = 540.8; 
int   velocityPersonA = 78;
int velocityPersonB = 112;
float d = 200.94;

String timeTakenPersonA = nf(distance/velocityPersonA, 0, 3);
float timeAMIN = distance/velocityPersonA*MINS_PER_HOUR;
float timeBMIN = distance/velocityPersonB*MINS_PER_HOUR;
int timeSave = int(timeAMIN - timeBMIN);

println("The time for Person A to travel " + distance + "km @ " + velocityPersonA + "km/hr is " + timeTakenPersonA + " hours.");
print("If travelling @ " + velocityPersonB + "km/hr, Person B will save " + timeSave + " minutes!");



// PASTE COMPLETED CODE FROM QUESTION 1 HERE, AND THEN MODIFY AS PER LAB1.PDF
