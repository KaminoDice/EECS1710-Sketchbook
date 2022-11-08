// ======================================
// Lab 1
// Question 4 (using Question 3 as the basis for a visualization of 
//                  a particular colour combination and its resulting luminance)
// ======================================
// Student ID:
// First Name:
// EECS User Name (not password):
// ======================================

// [ 10 marks  ->  6 for functionality, 4 for aesthetic ]
final float Tr = 0.2989;
final float Tg = 0.5870;
final float Tb = 0.1140;
final float R0 = 500;
final float Prop= 255; 

int r, g, b ,y;
r=225;
g=120;
b=70;
y = int(r*Tr+g*Tg+b*Tb);

float Pr,Pg,Pb,Py;
Pr=sqrt(r/Prop)*R0;
Pg=sqrt(g/Prop)*R0;
Pb=sqrt(b/Prop)*R0;
Py=sqrt(y/Prop)*R0;

size(500 , 500); 
int centerX=width/2; 
int centerY=height/2;


//println("The pixel (r = " + r + ", g = " + g + ", b = " + b + ") has a luminance of (y = " + y + ")");
background(Prop);
fill(y);
strokeWeight(9);
stroke(r,g,b);
circle(centerX,centerY,Py);

fill(r,g,b);
stroke(y);
strokeWeight(3);
arc(centerX, centerY, R0, R0, 0, PI/3);
arc(centerX, centerY, R0, R0, 2*PI/3,PI);
arc(centerX, centerY, R0, R0, 4*PI/3, 5*PI/3);


strokeWeight(6);
fill(Prop,0,0);
stroke(r,0,0);
arc(centerX, centerY, Pr, Pr, 0, PI/3);
fill(0,Prop,0);
stroke(0,g,0);
arc(centerX, centerY, Pg, Pg, 2*PI/3,PI);
fill(0,0,Prop);
stroke(0,0,b);
arc(centerX, centerY, Pb, Pb, 4*PI/3, 5*PI/3);

fill(r,g,b);
stroke(y,y,y);
strokeWeight(9);
circle(centerX, centerY, R0/6);

textSize(25);
fill(Prop,0,0);
text("red:"+str(r),centerX+Pr/4,centerY-10);
fill(0,Prop,0);
text("green:"+str(g),centerX-Pg/2,centerY-10);
fill(0,0,Prop);
text("blue:"+str(b), centerX-30, centerY-Pb/2-10);
fill(y,y,y);
text("Luminance:"+str(y),centerX-R0/7, centerY+Py/2+27);
fill(r,g,b);
text("R,G,B", centerX-R0/20, centerY+R0/7);

// INCLUDE CODE BELOW TO CREATE YOUR VISUALIZATION OF THE COLOUR COMBINATIONS USED TO COMPUTE
// LUMINANCE ABOVE, AND THE RESULTING COLOURS & LUMINANCE (see lab1.pdf)
// Notes:
//   -> create a graphical representation of the levels of r,g,b
//      the r,g,b colour that results, and the y equivalent
//   -> be creative with how you show this visually.  For example, consider
//      trying to use 2D graphics primitives explored in lab0 and lectures to
//      make an intuitive visualization of the colour mix and its result (see lab1.pdf)
//
//   -> This does not need to be a dynamic sketch, so no need for setup() and draw() blocks
//
//   -> You may use the following methods/commands to draw text to the application window:
//          text(), fill(), noFill(), textSize(), textFont(), textWidth(), etc.
//
//   -> The 2D graphics methods/commands may also be useful:
//          arc(), circle(), ellipse(), rect(), square(), line(), triangle(), ...
//
//   -> Marks will be given for aesthetic design of your visualization
// FUNCTIONALITY - YOUR APPLICATION MUST:
//
//   -> include and use colour
//   -> use some text printed into the application window (not console) to display 
//      the numeric values of the colour variables and luminance variable
//   -> include some 2D graphics representation of the colour variables that
//      uses a graphic to represents the proportion of each r,g,b colour 
//      (e.g. a graphic that represents a percentage of 255) according to 
//       the current values assigned to the variables for r,g,b )
//   -> show the resulting colour and luminance result in a graphical form
//   -> display a new result when re-run for a different set of r,g,b values
       // you may modify this, but you need to create a window
// INCLUDE CODE HERE FROM YOUR COMPLETED QUESTION 3 (that computes y from r,g,b)
