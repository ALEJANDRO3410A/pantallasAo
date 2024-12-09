import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pantallas_ao/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(FrigoserviciosApp());

    // Verifica que el texto esperado se muestra correctamente.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Simula un clic en el icono '+' y actualiza la pantalla.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifica que el contador se incrementó.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
