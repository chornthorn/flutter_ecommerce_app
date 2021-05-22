import 'package:flutter/cupertino.dart';
import 'package:flutter_flavor/config/flavors/flavor_config.dart';
import 'package:flutter_flavor/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig(
    environment: FlavorEnvironment.PROD,
    name: "Production",
    variables: {
      "API_ENDPOINT": "www.bongthorn.tech/api",
    },
  );
  return runApp(AppIndex());
}
