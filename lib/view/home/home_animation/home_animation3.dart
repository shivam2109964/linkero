import 'package:flutter/material.dart';

class HomeAnimation3 extends StatelessWidget {
  const HomeAnimation3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Center(child: Image.asset("assets/final/1.png")),
    );
  }
}
