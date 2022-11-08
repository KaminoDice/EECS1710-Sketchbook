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
char[] dictarray = dictionary.toCharArray();//   array to keep dictionary of words; //   array to track hidden word; 
//   array to track the characters to show to screen for the guesses of the hidden word
//   boolean flags to track when guess is finished
//   counter to track how many guesses so far



// POSSIBLE METHODS

// method to initialize dictionary (String[] array) from String of 20 words


// method to select a random word from the dictionary as the hidden word (return string or char[])


// method to handle a guess (getting a key (letter) from the keyPressed method)


// method to display word guess so far


// method to test if word fully guessed (and output final number of guesses and revealed word if so)
