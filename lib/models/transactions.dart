
import 'package:flutter/material.dart';

class Transaction {
  final String title;
  final String dateTime;
  final double amount;
  final IconData icon;

  Transaction({
    required this.title,
    required this.amount,
    required this.dateTime,
    required this.icon,
  });


}