import 'package:flutter/material.dart';

class Costomareaandprice extends StatelessWidget {
  final String area;
  final String price;
  const Costomareaandprice(
      {super.key, required this.area, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          area,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "\$$price",
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
