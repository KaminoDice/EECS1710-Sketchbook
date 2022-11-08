// SYNTAX, RUNTIME & LOGIC ERRORS



// 1) Syntax Error [occurs at compile time - detected by editor/PDE]

{
  int x = 4.5;    // error displayed prior to running 
                  // shows "Type mismatch, "float" does not match with "int"
                  // HAVE to FIX in order to run program!

  print("hello")  // no ";" - again have to fix to run

}              
    
                
// 2) Runtime Error [occurs at runtime, causes an exception to halt program]

{
 int x = 0;
 int y = 5 / x;
  
 print("y = 5/x = 5/" + x + " = " + y);
 
}


// 3) Logic Error

int area = width + height;
print(area);
