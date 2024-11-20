import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  double size = 100;
  LogoWidget({required this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('images/logo.png', height: size);
  }
}
