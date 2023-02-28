import 'package:flutter_aries_vcx/flutter_aries_vcx.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> pause() => Future.delayed(const Duration(milliseconds: 500));

Future<void> main() async {
  testWidgets('Create instance', (tester) async {
    var arireVcx = await AriesVcx.defaultInstance;
    arireVcx.agencyClient;
    arireVcx.agent;
  });
}
