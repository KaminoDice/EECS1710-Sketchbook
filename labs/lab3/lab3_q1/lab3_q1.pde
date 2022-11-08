// Lab 3
// Question 1 - codingbat practice questions (conditional logic)
// ======================================
// Student ID: 219256809
// First Name: Huanrui
// EECS User Name (not password): saikoro
// ======================================


// [ 12 marks ]


// HINTS:  please plug your code into the web urls provided for each
// question to see if your solution passes all the tests! Any tests
// that fail, look to see the input and output expected, to help guide
// you on what might be wrong.  For each question, the website url will
// output the results of the unit tests as long as you return a value
// (any value of the right type) from your method.



void setup() {
  print("twoAsOne(10, 10, 20)="+twoAsOne(10, 10, 20)
  +"\nsortaSum(12, 11)="+sortaSum(12, 11)
  +"\ngreenTicket(2, 3, 3)="+greenTicket(2, 3, 3)
  +"\nanswerCell(true, false, true)="+answerCell(true, false, true)
  +"\nalarmClock(0, true)="+alarmClock(0, true));
  // you can use this to call any of the methods to check its output
  // and print to the console (though if you are using the website
  // url's to check your answers, you probably wont need this)
}


// -----------
// twoAsOne
// -----------
// Given three ints, a b c, return true if it is possible to add two
// of the ints to get the third.

boolean twoAsOne(int a, int b, int c) {

  // COMPLETE THIS METHOD
  return a+b==c||a+c==b||b+c==a;
}




// -----------
// sortaSum
// -----------
// Given 2 ints, a and b, return their sum. However, sums in the range
// 10..19 inclusive, are forbidden, so in that case just return 20.

int sortaSum(int a, int b) {

  // COMPLETE THIS METHOD
  if (a+b>19||a+b<10) {
    return a+b;
  } else {
    return 20;
  }
}



// -----------
// greenTicket
// -----------
// You have a green lottery ticket, with ints a, b, and c on it.
// If the numbers are all different from each other, the result is 0.
// If all of the numbers are the same, the result is 20. If two of
// the numbers are the same, the result is 10.

int greenTicket(int a, int b, int c) {

  // COMPLETE THIS METHOD
  if (a==b && b==c) {
    return 20;
  } else if (a==b||b==c||c==a) {
    return 10;
  } else {
    return 0;
  }
}



// -----------
// answerCell
// -----------

boolean answerCell(boolean isMorning, boolean isMom, boolean isAsleep) {

  // COMPLETE THIS METHOD
  return !(isAsleep|| isMorning && !isMom);
}





// -----------
// alarmClock
// -----------
// Given a day of the week encoded as 0=Sun, 1=Mon, 2=Tue, ...6=Sat,
// and a boolean indicating if we are on vacation, return a string
// of the form "7:00" indicating when the alarm clock should ring.
// Weekdays, the alarm should be "7:00" and on the weekend it should
// be "10:00". Unless we are on vacation -- then on weekdays it should
// be "10:00" and weekends it should be "off".

String alarmClock(int day, boolean vacation) {

  // COMPLETE THIS METHOD
  if (day >= 1&& day <= 5 &&!vacation) {
    return "7:00";
  } else if ((day == 0 || day == 6 )&&vacation) {
    return "off";
  } else {
    return "10:00";
  }
}
