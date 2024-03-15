
// the main function
void main() {

  List<Map<String, dynamic>> fruits =
  [
    {"name": "Apple", "color": "Red", "price": 2.5},
    {"name": "Banana", "color": "Yellow", "price": 1.0},
    {"name": "Grapes", "color": "Purple", "price": 3.0},
  ];


  print("\nOriginal Fruit Details before Discount:");
  displayFruitDetails(fruits);

  
  applyPriceDiscount(fruits, 10);

  print("Fruit Details After Applying 10% Discount:");
  displayFruitDetails(fruits);
}




// display fruits function
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {

    print( "Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");

  }
}



//  discount on prices
void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discount) {
  for (var fruit in fruits) {
    double discountAmount = fruit['price'] * (discount / 100);
    fruit['price'] -= discountAmount;
  }
}

