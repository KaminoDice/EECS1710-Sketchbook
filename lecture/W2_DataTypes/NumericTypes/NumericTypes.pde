// Block1: integer types
{
  int quantity;
  quantity = 25;
  
  long stock = quantity;
  //long stock = quantity;
  
  println("block1:");
  print("quantity = ");
  println(quantity);
  print("stock = ");
  println(stock);
  println();
}

// Block2: real numeric types
{
  float quantity;
  quantity = 25.0f;
  float stock = quantity;
  
  println("block2:");
  print("quantity = ");
  println(quantity);
  print("stock = ");
  println(stock);
  println();
}



// Block4: exploring range limits
{
  int stock = 65536;
  int order = 1002314;
  //int stock = -2147483648;
  //int order = -1;
  
  int total = order + stock;
  
  //total = stock/order;  
  
  println();
  println("block4:");
  print("total = ");
  print(stock); print(" + ");
  print(order); print(" = ");
  println(total);
  
  float f1 = 3.4e38;
  float f2 = 1000;
  float f3 = f1 * f2;
  
  println();
  print("f1 = "); println(f1);
  print("f2 = "); println(f2);
  print("f3 = f1+f2 = "); println(f3);
  
}

// block 5: division caveats
{ 
  int oneHour = 60;      // mins
  int onePres = 20;      // 20 mins per pres
  
  int presPerHour = oneHour/onePres;
  print("oneHour = "); print(oneHour); println(" mins");
  print("onePres = "); print(onePres); println(" mins");
  print("presPerHour = "); print(presPerHour); println();
}
