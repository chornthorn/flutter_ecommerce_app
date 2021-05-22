import 'package:flutter/material.dart';

enum FlavorEnvironment { DEV, PROD }

class FlavorConfig {
  final FlavorEnvironment environment;
  final Color color;
  final Map<String, dynamic> variables;
  final BannerLocation location;
  final String name;
  static FlavorConfig _instance;
  static FlavorConfig get instance => _instance;

  FlavorConfig._internal(
    this.environment,
    this.color,
    this.variables,
    this.location,
    this.name,
  );

  factory FlavorConfig({
    FlavorEnvironment environment: FlavorEnvironment.PROD,
    Color color: Colors.red,
    BannerLocation location: BannerLocation.topStart,
    String name: "",
    @required final Map<String, dynamic> variables,
  }) {
    _instance ??= FlavorConfig._internal(
      environment,
      color,
      variables,
      location,
      name,
    );
    return _instance;
  }

  @override
  String toString() {
    return 'FlavorConfig{environment: $environment, color: $color, variables: $variables, location: $location, name: $name}';
  }
}
