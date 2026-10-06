class ShoppingCart {
  List<double> prices;

  ShoppingCart(this.prices);

  double cheapestPrice() {
    double cheapest = prices[0];
    for (double price in prices) {
      if (price < cheapest) {
        cheapest = price;
      }
    }
    return cheapest;
  }

  double totalPrice() {
    double total = 0;
    for (double price in prices) {
      total += price;
    }
    return total;
  }
}

void main() {
  var cart = ShoppingCart([50, 45, 21]);
  var myNewCart = ShoppingCart([100, 300, 10, 0, 5]);

  print(cart.cheapestPrice());
  print(cart.totalPrice());

  print("\nNew Cart");
  print(myNewCart.cheapestPrice());
}
