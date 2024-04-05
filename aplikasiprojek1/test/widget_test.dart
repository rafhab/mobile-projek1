import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aplikasiprojek1/dice_widget.dart';

void main() {
  testWidgets('Pressing the roll button should change the dice value',
      (WidgetTester tester) async {
    // Bangun aplikasi dan trigger frame pertama.
    await tester.pumpWidget(const MaterialApp(
      home: DiceWidget(),
    ));

    // Cari tombol lempar dengan menggunakan key.
    final rollButtonFinder = find.byKey(const Key('roll_button'));

    // Tekan tombol lempar.
    await tester.tap(rollButtonFinder);
    await tester.pump();

    // Verifikasi bahwa nilai dadu telah berubah.
    expect(find.text('Nilai dadu:'), findsOneWidget);
    expect(find.text('1'),
        findsNothing); // Diasumsikan nilai awal tidak sama dengan 1
  });
}
