void order() {
  String holder = "Cup Bowl Cone";
  String [] holderToken = split(holder, ' ');
  
  String flavour = "Chocolate Strawberry Vanilla Mint";
  String [] flavourToken = split(flavour, ' ');
  
  String topping = "Sprinkles Cherry WaffleSticks Pretzel";
  String [] toppingToken = split(topping, ' ');
  
  int ranHolder = int (random(0,2)); //generate random token for holders
  int ranFlavour = int (random(0,4)); // generate random token for flavours
  int ranTopping = int (random(0,4)); // generate random token for syrups and toppings
  
  String order = "A "+ holderToken[ranHolder]+ " of "+ flavourToken[ranFlavour]+ " ice-cream with "+ toppingToken[ranTopping]+ " on top ";
  
  println (order);
  
  //order board
  fill (255);
  textSize(22);
  textAlign(CENTER);
  text (order, 120, 510, 300, 550);
  
}
