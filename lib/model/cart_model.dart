import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<List<Object>> _shopItems = [
    ['Apple', '3.50', 'lib/images/apple.png', Colors.redAccent],
    ["Avaccado", "4.00", "lib/images/avoccado.png", Colors.green],
    ["Banana", "2.00", "lib/images/banana.png", Colors.yellow],
    ['Mango', '5.00', 'lib/images/mangoes.png', Colors.orange],
  ];
  List _cartItems = [];
  get shopItems => _shopItems;
  get cartItems => _cartItems;
  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }
  //remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
  // calculate total price
  String calculateTotal() {
    double total = 0;
    for (var item in _cartItems) {
      total += double.parse(item[1].toString());
    }
    return total.toStringAsFixed(2);
  }
}
