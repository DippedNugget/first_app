import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [Color.fromARGB(255, 33, 2, 85),
            Color.fromARGB(255, 104, 172, 65)],),
      ),
    ),
  );
}
