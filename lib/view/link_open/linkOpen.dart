import 'package:flutter/material.dart';
import 'package:linkero/model/constant/color.dart';
import 'package:linkero/model/constant/fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkOpen extends StatefulWidget {
  const LinkOpen({super.key});

  @override
  State<LinkOpen> createState() => _LinkOpenState();
}

class _LinkOpenState extends State<LinkOpen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: AppColors.grayColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "Rive",
                    style: AppFonts.montserratDesign(
                        fontSize: 36, color: Colors.grey.shade500),
                  ),
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  launchUrl(
                    Uri.parse("https://linke.ro?via=shivam"),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.yellowColor,
                    border: Border.all(
                      color: AppColors.yellowBorder,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "Create",
                      style: AppFonts.poppinsDesign(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
