import 'package:flutter/material.dart';

class Elbise extends StatelessWidget {
  const Elbise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: "assets/dress.jpg",
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/dress.jpg"),
              fit: BoxFit.cover
            )
          ),
        ),
      ),
    );
  }
}
