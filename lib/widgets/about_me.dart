import 'package:flutter/material.dart';
import 'package:ui_designs/screens/about.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(About.routename);
          },
          child: Text('About developer')
        ),
      ),
    );
  }
}