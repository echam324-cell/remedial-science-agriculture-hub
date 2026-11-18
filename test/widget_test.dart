import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:remedial_science_agriculture_hub/app.dart';

void main() {
  testWidgets('home screen shows subjects and grade selector', (tester) async {
    await tester.view.setPhysicalSize(const Size(800, 1200));
    await tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const RemedialHubApp());

    expect(find.text('Remedial Learning Hub'), findsOneWidget);
    expect(find.text('Science'), findsOneWidget);
    expect(find.text('Grade 7'), findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Agriculture'),
      300,
      scrollable: find.byType(Scrollable).first,
    );
    expect(find.text('Agriculture'), findsOneWidget);
  });
}
