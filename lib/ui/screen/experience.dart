import 'package:flutter/material.dart';
import 'package:portfolio/ui/const/const_color.dart';
import 'package:portfolio/ui/widget/mobile_responsive_widget/experience_widget_mobile.dart';
import 'package:portfolio/ui/widget/text_widget.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  List<Map<String, dynamic>> companyName = [
    {
      'name': 'Shajin Private Limited(Tregzo)',
      'year': 'May-2024 - Present',
      'history':
          'UI/UX Design: Created responsive, user-friendly interfaces for Android and iOS. \n API Integration: Linked app to backend services for seamless data flow, including user authentication and order processing.\n Product Display: Developed dynamic product pages with smooth navigation and interactive features.\n Location Services: Integrated Google Maps API for location tracking and enhanced user functionality.\n Payment Integration: Implemented secure PhonePe payment gateway for in-app transactions. \n State Management & Storage: Utilized GetX for state management and Hive for local data storage. \n Agile Collaboration: Worked with cross-functional teams to deliver timely, high-quality features.',
      'field': 'Flutter Developer'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.liteBlack,
      appBar: AppBar(
        backgroundColor: ConstColor.lightBlue,
        title: TextWidget(
          text: 'Experience',
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemCount: companyName.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExperienceWidgetMobile(
                            name: companyName[index]['name'],
                            year: companyName[index]['year'],
                            history: companyName[index]['history'],
                            field: companyName[index]['field']),
                      ));
                },
                child: Container(
                    height: 75,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(color: ConstColor.green, width: 3),
                          bottom: BorderSide(color: ConstColor.green, width: 3),
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Colors.white.withValues(alpha: 0.5))
                        ],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                        color: Colors.black),
                    child: Center(
                        child: TextWidget(
                      text: companyName[index]['name'],
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ))),
              );
            },
          )),
    );
  }
}
