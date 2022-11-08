// ======================================
// Lab 1
// Question 3 (converting an r,g,b colour into a single luminance value y)
// ======================================
// Student ID: 
// First Name: 
// EECS User Name (not password): 
// ======================================

// [ 8 marks ]
final float Tr = 0.2989;
final float Tg = 0.5870;
final float Tb = 0.1140;

int r, g, b ,y;
r= 233;
g= 233;
b= 233;

// PLACE ANY VARIABLES or CONSTANTS you need HERE
//  notes:
//    -> variables should be declared and used to hold each of the three colour
//        values (red,green,blue) & one for the equivalent luminance value
//    -> they can be assigned/initialized and modified each time
//        you wish to run the program to check a different combination

y = int(r*Tr+g*Tg+b*Tb);

println("The pixel (r = " + r + ", g = " + g + ", b = " + b + ") has a luminance of (y = " + y + ")");

// PERFORM YOUR CALCULATION HERE AND DISPLAY OUTPUT TO CONSOLE 
//  notes:
//    -> as per the examples shown in the lab1.pdf document
//    -> note these examples each correspond to one run of this sketch 
//        (each time with a new set of colour values assigned to the variables)
//    -> create any new constants or variables you deem necessary
//    -> make sure you stick to the style conventions discussed in lectures 
//        (i.e. suitable variable names, layout & indentation, constants, etc)
