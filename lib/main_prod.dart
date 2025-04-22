import 'package:digital_wallet/flavors.dart';
import 'package:digital_wallet/main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.prod;
  await runner.main();
}
