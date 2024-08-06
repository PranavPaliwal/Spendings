import 'package:flutter/material.dart';
import 'package:spendings/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor:const Color(0xFF48B5B8), // Blue-green seed color
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor:const Color(0xFF3498DB), // Bright blue color with a slight sparkle effect
          foregroundColor: Colors.white, // White text color for better visibility
        ),
        cardTheme: CardTheme().copyWith(
          color: kColorScheme.surfaceVariant,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primary,
            foregroundColor: Colors.white, // White text color for better visibility
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: kColorScheme.primary,
            fontSize: 16,
          ),
        ),
      ),
      home: const Expenses(),
    ),
  );
}