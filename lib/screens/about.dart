import 'package:flutter/material.dart';

import '/widgets/app_drawer.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  static const routename = 'lib/screens/about.dart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('About'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.63,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(200),
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(400),
                  bottomLeft: Radius.circular(50)),
              child: Image.asset(
                'assets/images/1651308447493.jpeg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70),
                topRight: Radius.circular(70),
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70),
              ),
            ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Hi, I\'m Banjo, nice to meet ya! \n \n I am a newbie at Flutter, so i decided to test my front end UI skills, lol.\n \nI hope to engage in more complex projects and hopefully upload some to the appstore.',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'FuzzyBubbles'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
