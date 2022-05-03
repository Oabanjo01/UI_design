import 'package:flutter/material.dart';

import '/screens/about.dart';
import '/screens/home.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.48,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(200),
                    // bottomLeft: Radius.circular(100),
                  ),
                  child: Image.asset(
                    'assets/images/karsten-winegeart-Qb7D1xw28Co-unsplash.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              ListTile(
                leading: const Icon(
                  Icons.pets_rounded,
                  color: Colors.amber,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(
                    fontFamily: 'FuzzyBubbles',
                    color: Colors.amber
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(MyHomePage.routename);
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ListTile(
                leading: const Icon(
                  Icons.face_rounded,
                  color: Colors.amber,
                ),
                title: const Text(
                  'About me',
                  style: TextStyle(
                    fontFamily: 'FuzzyBubbles',
                    color: Colors.amber
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(About.routename);
                },
              ),
            ],
          ),
        );
  }
}

