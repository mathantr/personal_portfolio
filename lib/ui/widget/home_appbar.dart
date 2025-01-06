import 'package:flutter/material.dart';
import 'package:portfolio/ui/const/const_color.dart';
import 'text_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: Colors.black,
      leading: w < 600
          ? IconButton(
              icon: Icon(
                Icons.menu_sharp,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {
                // Show the Drawer when the icon is pressed on smaller screens
                Scaffold.of(context).openDrawer();
              },
            )
          : null,
      flexibleSpace: Center(
        child: w < 600
            ? Text('')
            : Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 40,
                  children: [
                    Spacer(), // Add left spacer
                    TextWidget(
                      text: 'Portfolio',
                      fontWeight: FontWeight.w700,
                    ),
                    // SizedBox(width: 10), // Space between items
                    TextWidget(
                      text: 'Home',
                      fontWeight: FontWeight.w700,
                    ),
                    // SizedBox(width: 10),
                    TextWidget(
                      text: 'About',
                      fontWeight: FontWeight.w700,
                    ),
                    //SizedBox(width: 10),
                    TextWidget(
                      text: 'Work',
                      fontWeight: FontWeight.w700,
                    ),
                    // SizedBox(width: 10),
                    TextWidget(
                      text: 'Service',
                      fontWeight: FontWeight.w700,
                    ),
                    // SizedBox(width: 10),
                    TextWidget(
                      text: 'Contact',
                      fontWeight: FontWeight.w700,
                    ),
                    Spacer(), // Add right spacer
                  ],
                ),
              ),
      ),
    );
  }
}
