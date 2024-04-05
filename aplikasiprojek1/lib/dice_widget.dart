import 'package:flutter/material.dart';
import 'dart:math';

class DiceWidget extends StatefulWidget {
  const DiceWidget({Key? key});

  @override
  _DiceWidgetState createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  int _diceValue = 1; // State untuk menyimpan nilai dadu saat ini

  void _rollDice() {
    setState(() {
      _diceValue = Random().nextInt(6) + 1; // Mengubah nilai dadu secara acak
    });
  }

  @override
  Widget build(BuildContext context) {
    // Gambar-gambar mata dadu
    List<String> diceImages = [
      '../dice-images/dice_1.png',
      'dice-images/dice_2.png',
      'dice-images/dice_3.png',
      'assets/dice-images/dice_4.png',
      'assets/dice-images/dice_5.png',
      'assets/dice-images/dice_6.png',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice Roller'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Nilai dadu:',
            ),
            // Menampilkan gambar mata dadu sesuai dengan hasil lemparan
            Image.asset(
              diceImages[_diceValue -
                  1], // Indeks dimulai dari 0, sedangkan dadu dimulai dari 1
              height: 200, // Sesuaikan dengan ukuran gambar
              width: 200,
            ),
            ElevatedButton(
              onPressed:
                  _rollDice, // Memanggil method untuk mengubah nilai dadu saat tombol ditekan
              child: const Text('Lempar Dadu'),
            ),
          ],
        ),
      ),
    );
  }
}
