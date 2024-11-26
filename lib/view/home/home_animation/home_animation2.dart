import 'package:flutter/material.dart';

class HomeAnimation2 extends StatelessWidget {
  const HomeAnimation2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Center(child: Image.asset("assets/final/connect.png")),
    );
  }
}
