// simple operators & range limits
{
  int stock = 65536;
  int order = 1002314;
  //int stock = -2147483648;
  //int order = -1;
  
  int total = order + stock;
  
  //total = stock/order;  
  
  println();
  println("simple operators:");
  print("total = ");
  print(stock); print(" + ");
  print(order); print(" = ");
  println(total);
  
  float f1 = 34534.22623;
  //float f1 = 3.4e38;
  float f2 = 1000;
  float f3 = f1 * f2;
  
  println();
  print("f1 = "); println(f1);
  print("f2 = "); println(f2);
  print("f3 = f1+f2 = "); println(f3);
  
}
// division caveats
{ 
  int oneHour = 60;      // mins
  int onePres = 20;      // 20 mins per pres
  
  int presPerHour = oneHour/onePres;
  
  println();
  println("division caveats:");
  
  print("oneHour = "); print(oneHour); println(" mins");
  print("onePres = "); print(onePres); println(" mins");
  print("presPerHour = "); print(presPerHour); println();
}
