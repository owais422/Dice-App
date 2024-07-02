import 'package:flutter/material.dart';
import 'package:ud_project_1/container_gradient.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromRGBO(26, 163, 21, 0.267),
        body: ContainerGradient(
          const Color.fromRGBO(0, 128, 0, 1.0),
          const Color.fromARGB(221, 60, 230, 60),
        ),
      ),
    ),
  );
}
