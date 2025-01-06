import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/const/const_color.dart';
import 'package:portfolio/ui/screen/personal_info.dart';
import 'package:portfolio/ui/screen/slider.dart';
import 'package:portfolio/ui/widget/stepper_list_widget.dart';
import 'package:portfolio/ui/widget/text_widget.dart';
import 'package:portfolio/util/common_responsive.dart';

import '../widget/box_profile_container.dart';
import '../widget/drawer_widget.dart';
import '../widget/home_appbar.dart';
import '../widget/name_intro_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(leading: w < 600 ? Icon(Icons.menu) : null),
      drawer: w < 600 ? DrawerWidget() : null,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBarWidget(),
              const SizedBox(
                height: 30,
              ),
              NameIntroWidget(),
              BoxProfileContainer(),
              const SizedBox(
                height: 50,
              ),
              w < 600
                  ? Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(23, 24, 20, 1),
                            Color.fromRGBO(23, 22, 21, 1),
                          ])),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 20,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: TextWidget(
                              text: 'About Me',
                              color: ConstColor.green,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Center(
                            child: TextWidget(
                              text: 'Explore the Creativity & More',
                              fontSize: 18,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextWidget(
                              text:
                                  'Experienced software developer with 3+ years specializing in Flutter development. Demonstrated history of working in the mobile application industry, with a strong understanding of state management solutions including Bloc, Provider, and GetX. Proficient in handling REST APIs, JSON data, and implementing unique iOS Cupertino designs. Successfully completed more than 5 applications with features such as responsive UI, push notifications, video call implementation using various SDKs, and local storage using SharedPreferences. Adept at creating unique designs for iOS, aiming to provide an excellent user experience. My experience includes working on financial and healthcare applications, showcasing my ability to work effectively in a team and handle real-time data efficiently. I am always ready to learn and adapt to new technologies and challenges. Looking forward to bringing my strong programming skills and passion for software development to new opportunities',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 150),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(23, 24, 20, 1),
                              Color.fromRGBO(23, 22, 21, 1),
                            ])),
                        child: Column(
                          spacing: 15,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    border: Border.all(
                                        width: 2,
                                        color: Colors.white
                                            .withValues(alpha: 0.5))),
                                child: Center(
                                  child: TextWidget(
                                    text: 'About Me',
                                    color: Color.fromRGBO(157, 229, 14, 1),
                                  ),
                                ),
                              ),
                            ),
                            TextWidget(
                              text: 'Explore the Creativity & More',
                              fontSize: 28,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: TextWidget(
                                text:
                                    'Experienced software developer with 3+ years specializing in Flutter development. Demonstrated history of working in the mobile application industry, with a strong understanding of state management solutions including Bloc, Provider, and GetX. Proficient in handling REST APIs, JSON data, and implementing unique iOS Cupertino designs. Successfully completed more than 5 applications with features such as responsive UI, push notifications, video call implementation using various SDKs, and local storage using SharedPreferences. Adept at creating unique designs for iOS, aiming to provide an excellent user experience. My experience includes working on financial and healthcare applications, showcasing my ability to work effectively in a team and handle real-time data efficiently. I am always ready to learn and adapt to new technologies and challenges. Looking forward to bringing my strong programming skills and passion for software development to new opportunities',
                                fontSize: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              child: SizedBox(
                                  width: double.infinity,
                                  child: StepperListWidget()),
                            ),
                          ],
                        ),
                      ),
                    ),
              const SizedBox(
                height: 20,
              ),
              CommonResponsive.w < 600
                  ? InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PersonalInfo()));
                      },
                      child: Container(
                        width: 180,
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: ConstColor.liteBlack,
                            border: Border.all(color: ConstColor.green)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextWidget(
                              text: 'Personal Info',
                              fontSize: 18,
                            ),
                            Icon(
                              CupertinoIcons.arrow_right,
                              color: ConstColor.lightBlue,
                            )
                          ],
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 20),
                      child: SizedBox(
                          height: w > 600 ? h * 2.5 : h * 6,
                          width: double.infinity,
                          child: StepperList()),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
