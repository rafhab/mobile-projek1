import 'package:flutter/material.dart';
import 'dice_widget.dart'; // Import file dice_widget.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 43, 13, 94)),
        useMaterial3: true,
      ),
      home: const DiceWidget(), // Gunakan DiceWidget sebagai home widget
    );
  }
}
