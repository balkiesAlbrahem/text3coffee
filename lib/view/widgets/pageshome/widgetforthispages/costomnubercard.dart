import 'package:flutter/material.dart';

class Costomnubercard extends StatelessWidget {
  final String number;
  const Costomnubercard({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return  Text(
      number,
      style: TextStyle(
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
