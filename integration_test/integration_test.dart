import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:login_register_app/const_keys/const_keys.dart';
import 'package:login_register_boiler_plate_code_flutter-master/main.dart' as app;

void main (){

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("group_auth" , ()async{
  
    testWidgets("register", (tester) async {
     app.main();
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(ConstKey.Email),"Ez@example.com");
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(ConstKey.City),"Gaza");
    await tester.pumpAndSettle(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(ConstKey.Mobile),"059267");
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(ConstKey.College),"iug");
    await tester.pumpAndSettle();
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle(const Duration(seconds: 1));
    await tester.enterText(find.byKey(ConstKey.Password),"123456789");
    await tester.pumpAndSettle();
    await tester.press(find.byKey(ConstKey.Register));
    await tester.pumpAndSettle();
  });
  });

}