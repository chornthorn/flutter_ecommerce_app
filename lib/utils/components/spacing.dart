import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  Space(this.width, this.height);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) => SizedBox(width: width, height: height);
}

class VSpace extends StatelessWidget {
  const VSpace(this.size, {Key key}) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) => Space(0, size);
}

class HSpace extends StatelessWidget {
  const HSpace(this.size, {Key key}) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) => Space(size, 0);
}
