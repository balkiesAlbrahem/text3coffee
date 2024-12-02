import 'package:flutter/material.dart';

class Costomnameproductcard extends StatelessWidget {
  final String nameproduct;
  const Costomnameproductcard({super.key, required this.nameproduct});

  @override
  Widget build(BuildContext context) {
    return Text(
     nameproduct ,
      style: const TextStyle(
        fontSize: 15,
      ),
    );
  }
}
