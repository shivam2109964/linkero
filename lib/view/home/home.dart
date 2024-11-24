import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linkero/model/constant/color.dart';
import 'package:linkero/model/constant/fonts.dart';
import 'package:linkero/view/home/home_animation/home_animation.dart';
import 'package:linkero/view/home/home_animation/home_animation2.dart';
import 'package:linkero/view/home/home_animation/home_animation3.dart';
import 'package:linkero/view/link_open/linkOpen.dart';
import 'package:linkero/view_model/bottom_navigation/bottom_nav_bloc.dart';

class Home extends StatefulWidget {
  static const String routeName = '/home-page';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();
  bool _isBottomBarVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_isBottomBarVisible) {
          setState(() {
            _isBottomBarVisible = false;
          });
        }
      } else if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          if (!_isBottomBarVisible) {
            _isBottomBarVisible = true;
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavBloc, int>(
        builder: (context, index) {
          if (index == 0) {
            return SingleChildScrollView(
              controller: _scrollController,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    const HomeAnimation(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/profile.jpg",
                          height: 30,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/star.png",
                              height: 15,
                            ),
                            Text(
                              "Trusted by 1200+ users",
                              style: AppFonts.poppinsDesign(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Row(
                      children: [
                        Text(
                          "Build a link-in-bio",
                          style: AppFonts.montserratDesign(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 5,
                      ),
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.465,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.secondLightColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Text(
                              "in minutes",
                              style: AppFonts.montserratDesign(
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
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
                          "Next",
                          style: AppFonts.poppinsDesign(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const HomeAnimation2(),
                    Row(
                      children: [
                        Text(
                          "Connect all yours",
                          style: AppFonts.montserratDesign(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 5,
                      ),
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.52,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.secondLightColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Text(
                              "channels",
                              style: AppFonts.montserratDesign(
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    const HomeAnimation3(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Your online\npresence\nin one place",
                      style: AppFonts.montserratDesign(
                        fontSize: 40,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Centralize your links, social media profiles and more on your own page.\nGet a unique link and connect with your audience.",
                      style: AppFonts.poppinsDesign(
                        fontSize: 13,
                        color: Colors.black87,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else if (index == 1) {
            return const LinkOpen();
          }
          return Container();
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavBloc, int>(
        builder: (context, index) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: _isBottomBarVisible ? kBottomNavigationBarHeight + 20 : 0.0,
            child: Wrap(
              children: [
                NavigationBar(
                  selectedIndex: index,
                  onDestinationSelected: (index) {
                    BlocProvider.of<BottomNavBloc>(context).add(
                      BottomNavEvent.values[index],
                    );
                  },
                  labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                  destinations: const [
                    NavigationDestination(
                      icon: Icon(Icons.home),
                      label: "Home",
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.bolt),
                      label: "link",
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
