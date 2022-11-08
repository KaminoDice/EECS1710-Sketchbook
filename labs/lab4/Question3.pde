// Lab 4 - Question3.pde
// ======================================
// Student ID: 219256809
// First Name: Huanrui
// EECS User Name (not password): saikoro
// ======================================

// Question 3:  Simple Hangman Game

// THIS QUESTION WILL REQUIRE YOU TO TRY TO THINK OF SOME LOGIC THAT MAKES SENSE TO ACHIEVE THE GOALS IN THE LAB DOCUMENT
// -> try to layout some of the possible methods outlined/indicated below.. and think about when they should be called, and 
// -> which methods should call others etc... HINT: game progresses each time a key is pressed (i.e. from keyPressed() method in Lab4_Main.pde)


// POSSIBLE VARIABLES/CONSTANTS 
String dictionary = "abstract, application, benchmark, compiler, domain, encryption, hashmap, matrix, "; //   String to contain 20 words (space separated); 
char[] word;//   array to keep dictionary of words; 
int[] hindex;//   array to track hidden word; 
int[] showIndex;//   array to track the characters to show to screen for the guesses of the hidden word
boolean check = false;//   boolean flags to track when guess is finished
int gus_counter = 0;//   counter to track how many guesses so far
int lens;


// POSSIBLE METHODS
String [] initializedict() {
  String[] dictarray = split( dictionary, " ");
  return dictarray;
}
// method to initialize dictionary (String[] array) from String of 20 words

char[] pick_word(String[] dictarray) {
  int randIndex = floor(random(20));
  String words = dictarray[randIndex];
  char[] word = words.toCharArray();
  return word;
}
// method to select a random word from the dictionary as the hidden word (return string or char[])


void guessword(int lens, char[] word) {
  check = false;
  for (int i=0; i<lens; i++) {
    if (key == word[i]) {
      showIndex[i] = 1;
      check = true;
      hidex[i] = 1;
    }
  }
  if (!check) {
    println("(sorry, that letter doesn’t exist)");
  }
  gus_counter++;
}
// method to handle a guess (getting a key (letter) from the keyPressed method)

void showord(int lens, char[] word) {
  for (int i=0; i<lens; i++) {
    if (showIndex[i] == 1) {
      print(word[i]+" ");
    } else if (hidex[i] == 0) {
      print("_ ");
    }
  }
  println("");
}
// method to display word guess so far

void testcheck() {
  int shownum = 0;
  for (int i=0; i<lens; i++) {
    if (showIndex[i] == 1) {
      shownum++;
    }
  }
  if (shownum == lens) {
    println("");
    println("(Correct, you guessed it! in "+gus_counter+" steps)");
  }
}// method to test if word fully guessed (and output final number of guesses and revealed word if so)
