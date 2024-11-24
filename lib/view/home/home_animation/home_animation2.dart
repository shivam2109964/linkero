import 'package:flutter/material.dart';
import 'package:linkero/model/constant/color.dart';
import 'package:linkero/model/constant/fonts.dart';

class HomeAnimation2 extends StatelessWidget {
  const HomeAnimation2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width,
      color: AppColors.grayColor,
      child: Center(
        child: Text(
          "Rive",
          style: AppFonts.montserratDesign(
            fontSize: 45,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
