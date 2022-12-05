void order() {
  String holder = "Cup Bowl Cone";
  String [] holderToken = split(holder, ' ');
  
  String flavour = "Chocolate Strawberry Vanilla Mint Sesame Matcha";
  String [] flavourToken = split(flavour, ' ');
  
  String syrup = "Chocolate Strawberry Caramel BubbleGum";
  String [] syrupToken = split(syrup, ' ');
  
  String topping = "Sprinkles Cherry WaffleSticks Pretzel";
  String [] toppingToken = split(topping, ' ');
  
  int ranHolder = int (random(0,2)); //generate random token for holders
  int ranFlavour = int (random(0,5)); // generate random token for flavours
  int ranSyrupTopping = int (random(0,3)); // generate random token for syrups and toppings
  
  String order = "A "+ holderToken[ranHolder]+ " of "+ flavourToken[ranFlavour]+ " ice-cream with "+ 
  syrupToken[ranSyrupTopping]+ " syrup and "+ toppingToken[ranSyrupTopping]+ " on top ";
  
  println (order);
  
  //order board
  fill (255);
  textSize(22);
  textAlign(CENTER);
  text (order, 120, 490, 300, 550);
  
}
