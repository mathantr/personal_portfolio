import 'package:flutter/material.dart';

import 'text_widget.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Color.fromRGBO(32, 32, 33, 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            spacing: 10,
            children: [
              Text(''),
              TextWidget(
                text: 'Personal Info',
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              TextWidget(
                text:
                    'Seasoned software developer specializing in Flutter, with more than three years of professional experience. Proven track record in the mobile application industry, adept at implementing state management solutions such as Bloc, Provider, and GetX. Skilled in handling REST APIs, JSON data, and crafting unique iOS Cupertino designs. Experienced in creating responsive UIs, integrating Local push notifications, implementing video calling, and managing local storage using SharedPreferences. Notable experience in financial, healthcare, and e-commerce applications, demonstrating strong teamwork skills and team management proficiency in handling real-time data. Continuously eager to embrace new technologies and challenges, dedicated to enhancing user experiences through innovative design and robust development practices',
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        color: Color.fromRGBO(29, 29, 29, 1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          TextWidget(text: 'Email'),
                          TextWidget(text: 'Mathantr95@gmail.com'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        color: Color.fromRGBO(29, 29, 29, 1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          TextWidget(text: 'Phone'),
                          TextWidget(text: '+(91) 8667431440'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        color: Color.fromRGBO(29, 29, 29, 1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          TextWidget(text: 'Address'),
                          TextWidget(text: 'Tiruchirappalli'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        color: Color.fromRGBO(29, 29, 29, 1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          TextWidget(text: 'Follow'),
                          Row(
                            children: [
                              Image.network(
                                'https://static.vecteezy.com/system/resources/previews/018/930/480/non_2x/linkedin-logo-linkedin-icon-transparent-free-png.png',
                                height: 30,
                                width: 30,
                              ),
                              Image.network(
                                  'https://img.icons8.com/ios_filled/200/FFFFFF/github.png',
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.cover),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
