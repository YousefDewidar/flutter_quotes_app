import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page.dart';

void main() {
  return runApp(const Quotes());
}

class Quotes extends StatelessWidget {
  const Quotes({super.key});

  @override
  Widget build(BuildContext 
  context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
  
}