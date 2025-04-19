import 'package:flutter/material.dart';
import 'package:portfolio/ui/const/const_color.dart';
import 'package:portfolio/ui/screen/experience.dart';
import 'package:portfolio/ui/screen/personal_info.dart';
import 'package:portfolio/ui/widget/text_widget.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  String selectedPage = 'Home'; // Initial page selection

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width; // Get screen width

    return Drawer(
      backgroundColor: ConstColor.liteBlack,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: ConstColor.lightBlue,
            ),
            child: Text(
              'Mathan Thiruvenkadam',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.person_add_outlined,
            ),
            title: TextWidget(
              text: 'Personal Info',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PersonalInfo(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.work_history,
            ),
            title: TextWidget(
              text: 'Experience',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExperienceScreen(),
                  ));
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.settings),
          //   title: const Text('Settings'),
          //   onTap: () {
          //     setState(() {
          //       // selectedPage = 'Settings';
          //     });
          //     Navigator.of(context).pop(); // Close the Drawer
          //   },
          // ),
        ],
      ),
    );
  }
}
