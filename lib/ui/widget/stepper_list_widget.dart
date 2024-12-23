import 'package:flutter/material.dart';
import 'package:portfolio/ui/const/const_color.dart';

class StepperList extends StatefulWidget {
  const StepperList({super.key});

  @override
  State<StepperList> createState() => _StepperListState();
}

class _StepperListState extends State<StepperList> {
  List title = [
    'Shajin Private Limited',
    'RamTech IT Solution',
    'Kloudoz Web Solution',
    'Devazo Software Solutions Pvt Ltd'
  ];
  List label = [
    'Flutter Developer',
    'Mobile Application Developer',
    'Flutter Developer',
    'Software Trainee'
  ];
  List body = [
    '1.UI/UX Design: Created responsive, user-friendly interfaces for Android and iOS.API\n2. Integration: Linked app to backend services for seamless data flow, including user authentication and order processing.\n3.Product Display: Developed dynamic product pages with smooth navigation and interactive features.\n4.Location Services: Integrated Google Maps API for location tracking and enhanced user functionality.\n5.Payment Integration: Implemented secure PhonePe payment gateway for in-app transactions.\n 6.State Management & Storage: Utilized GetX for state management and Hive for local data storage.\n 7.Agile Collaboration: Worked with cross-functional teams to deliver timely, high-quality features',
    'I have implemented features such as responsive UI, push notifications, and video call functionalities using various SDKs I have also worked with local storage using SharedPreferences, which allows our applications to store and retrieve user-specific information effectively In addition to this, I have handled REST APIs and JSON data, which are crucial for integrating our applications with back-end services I have also implemented unique iOS Cupertino designs, enhancing the user experience for our iOS users Overall, my role involves leveraging my technical skills to develop robust and user-friendly mobile applications, contributing to our company\'s success in the mobile application industry',
    'Develop and maintain cross-platform mobile applications using Flutter Implement and integrate Firebase services for authentication, storage, and real-time database Implement push notifications and in-app messaging using Firebase Cloud Messaging Develop UI using Cupertino designs for iOS platformWorking on MVC Architecture',
    '1.Flutter & Firebase App: Developed an online grocery shopping app with Flutter (front end) and Firebase (back end), including browsing, cart management, Firebase authentication, and real-time database for user management. Used Provider for state management and implemented push notifications with Firebase Cloud Messaging.\n 2.Web Development: Created responsive websites using HTML, CSS, JavaScript, and jQuery. Implemented web services using REST APIs and JSON. Utilized MySQL for data storage and retrieval.\n 3.Version Control: Maintained and updated websites using Git'
  ];

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        for (int i = 0; i < title.length; i++) ...[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Row(
              children: [
                if (i % 2 == 0) ...[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(title[i],
                          textAlign: TextAlign.justify,
                          style: const TextStyle(color: Colors.white)),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: w * 0.3,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            border: Border(
                                left: BorderSide(
                                  color: ConstColor.green,
                                ),
                                right: BorderSide(color: ConstColor.green),
                                bottom: BorderSide(color: ConstColor.green),
                                top: BorderSide(color: ConstColor.green))),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              label[i],
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(body[i],
                                style: const TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ] else ...[
                  Container(
                    width: w * 0.30,
                  )
                ],
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: ConstColor.green),
                    ),
                    Expanded(
                      child: Container(width: 3, color: ConstColor.green),
                    ),
                  ],
                ),
                if (i % 2 != 0) ...[
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title[i],
                          style: const TextStyle(color: Colors.white)),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: w * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: ConstColor.green)),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              label[i],
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(body[i],
                                style: const TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]
              ],
            ),
          ),
        ]
      ],
    );
  }
}
