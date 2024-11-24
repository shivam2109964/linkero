import 'package:flutter/material.dart';
import 'package:linkero/model/constant/color.dart';
import 'package:linkero/model/constant/fonts.dart';
import 'package:linkero/view/welcome/animations/ani_controller';

class Welcome extends StatelessWidget {
  static const String routeName = "/Welcome-page";
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  "SMART",
                  style: AppFonts.montserratDesign(
                    fontSize: 40,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    latterSpacing: 28,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    color: AppColors.yellowColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    border: Border.all(
                      color: AppColors.yellowBorder,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Link-in-Bio",
                      style: AppFonts.montserratDesign(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const WelcomeAnimation1(),
            Text(
              "Linkero",
              style: AppFonts.montserratDesign(
                fontSize: 40,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: AppColors.lightYellow,
                  border: Border.all(
                    color: AppColors.yellowBorder,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Start",
                    style: AppFonts.poppinsDesign(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
