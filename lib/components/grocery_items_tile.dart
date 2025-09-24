import 'package:flutter/material.dart';

class GroceryItemsTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final Color color;
  const GroceryItemsTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(color: color),
        child: Column(
          children: [Image.asset(imagePath, height: 150, width: 150)],
        ),
      ),
    );
  }
}
