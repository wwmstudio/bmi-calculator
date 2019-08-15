//
// Copyright © 2012-2019 wwmstudio. All rights reserved.
//
// This software is produced by wwmstudio.
// Unauthorized redistribution, reproduction, or usage of
// this software in whole or in part without the express
// written consent of wwmstudio.com is strictly prohibited.
//

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bmi_calculator/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(BMIApp());

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
