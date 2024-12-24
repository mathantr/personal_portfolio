import 'package:flutter/material.dart';
import 'package:portfolio/ui/const/const_color.dart';
import 'package:portfolio/ui/widget/text_widget.dart';

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
      physics: const NeverScrollableScrollPhysics(),
      children: [
        for (int i = 0; i < title.length; i++) ...[
          SizedBox(
            height: w > 800
                ? h * 0.6
                : h * 1.3, // Adjust height based on screen width
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left Column
                if (i % 2 == 0) ...[
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextWidget(
                          text: title[i],
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: w > 600
                              ? 28
                              : 22, // Adjust font size for larger screens
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: w > 600 ? w * 0.4 : w * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: ConstColor.green),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                text: label[i],
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: w > 600 ? 22 : 18,
                              ),
                              const SizedBox(height: 10),
                              TextWidget(
                                text: body[i],
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: w > 600 ? 14 : 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ] else ...[
                  Container(width: w > 600 ? w * 0.4 : w * 0.5),
                ],
                const SizedBox(width: 10),

                // Circle and Line Connector
                Column(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ConstColor.green,
                      ),
                    ),
                    Expanded(
                      child: Container(width: 3, color: ConstColor.green),
                    ),
                  ],
                ),

                // Right Column
                if (i % 2 != 0) ...[
                  const SizedBox(width: 10),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: title[i],
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: w > 600 ? 28 : 22,
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: w > 600 ? w * 0.5 : w * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: ConstColor.green),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                text: label[i],
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: w > 600 ? 22 : 18,
                              ),
                              const SizedBox(height: 10),
                              TextWidget(
                                text: body[i],
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: w > 600 ? 14 : 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
