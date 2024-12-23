import 'package:flutter/material.dart';
import 'package:portfolio/ui/const/const_color.dart';
import 'package:portfolio/ui/widget/text_widget.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(''),
              Center(
                child: TextWidget(
                  text: 'Experience',
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: ConstColor.green,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    TextWidget(
                      text: 'K.RamaKrishnan College of Technology',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    TextWidget(
                      text: 'BE Computer Science Engineering - GPA 68%',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    TextWidget(
                      text: '2020',
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: ConstColor.green,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    TextWidget(
                      text: 'M.A.M Polytechnic College',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    TextWidget(
                      text: 'Diploma in Computer Science - GPA 67%',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    TextWidget(
                      text: '2014',
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
