import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  const PlusButton({super.key});

  @override
  Widget build(context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[400],
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.add),
        ));
  }
}
