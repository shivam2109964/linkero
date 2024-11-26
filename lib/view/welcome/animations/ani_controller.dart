import 'package:flutter/material.dart';

class AniController extends StatelessWidget {
  const AniController({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.85,
      child: Center(
        child: Image.asset("assets/link.png"),
      ),
    );
  }
}
