import 'package:flutter/material.dart';
import 'package:spendings/widgets/expenses.dart';

void main() {
  runApp(
     MaterialApp(
      theme: ThemeData().copyWith(useMaterial3: true,
      scaffoldBackgroundColor:Color.fromARGB(255, 255, 243, 199)),
      home: const Expenses(),
    ),
  );
}

