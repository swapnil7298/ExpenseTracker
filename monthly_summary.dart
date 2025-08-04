import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MonthlySummary extends StatelessWidget {
  final double monthlyTotal;

  const MonthlySummary({super.key, required this.monthlyTotal});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'This Month (${DateFormat.MMMM().format(DateTime.now())}):',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              '\$${monthlyTotal.toStringAsFixed(2)}',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            )
          ],
        ),
      ),
    );
  }
}