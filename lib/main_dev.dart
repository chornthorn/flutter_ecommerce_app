import 'package:flutter/material.dart';
import 'package:flutter_flavor/config/flavors/flavor_config.dart';
import 'package:flutter_flavor/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig(
    environment: FlavorEnvironment.DEV,
    name: "Development",
    color: Colors.red,
    location: BannerLocation.topStart,
    variables: {
      "API_ENDPOINT": "http://localhost:8000/api",
    },
  );
  return runApp(AppIndex());
}
