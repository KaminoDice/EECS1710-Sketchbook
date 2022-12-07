
int[] order() {
  String holder = "Cone Cup Bowl";
  String [] holderToken = split(holder, ' ');

  String flavour = "Strawberry Chocolate Vanilla Mint";
  String [] flavourToken = split(flavour, ' ');

  String topping = "Cherry Sprinkles WaffleSticks Pretzel";
  String [] toppingToken = split(topping, ' ');

  int ranHolder = int (random(0, 3)); //generate random token for holders
  int ranFlavour = int (random(0, 4)); // generate random token for flavours
  int ranTopping = int (random(0, 4)); // generate random token for syrups and toppings

  order_string = "A "+ holderToken[ranHolder]+ " of "+ flavourToken[ranFlavour]+ " ice-cream with "+ toppingToken[ranTopping]+ " on top ";

  println (order_string);

  int[] outputs = new int[3];
  outputs[0] = ranHolder;
  outputs[1] = ranFlavour;
  outputs[2] = ranTopping;
  return outputs;
}
