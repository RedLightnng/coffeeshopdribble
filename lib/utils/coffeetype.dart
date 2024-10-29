import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeetype;
  final bool isSelected;
  final VoidCallback onTap;
  const CoffeeType(
      {super.key,
      required this.coffeetype,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          coffeetype,
          style: TextStyle(
              fontSize: 18,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
