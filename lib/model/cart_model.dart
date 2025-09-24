import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<List<Object>> _shopItems = [
    ['Apple', '3.50', 'lib/images/apple.png', Colors.redAccent],
    ["Avaccado", "4.00", "lib/images/avoccado.png", Colors.green],
    ["Banana", "2.00", "lib/images/banana.png", Colors.yellow],
    ['Mango', '5.00', 'lib/images/mangoes.png', Colors.orange],
  ];
  get shopItems => _shopItems;
}
