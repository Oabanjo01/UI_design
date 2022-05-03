import 'package:flutter/material.dart';

import '/constants/colours.dart';

import '/widgets/app_drawer.dart';
import '/widgets/body.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  static const routename = 'lib/screens/home.dart';

  final String title;
  final String dogUrl = 'https://www.svgrepo.com/show/2046/dog.svg';
  final String dogFoodUrl = 'https://www.svgrepo.com/show/3682/dog-food.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kprimaryColor,
          elevation: 0,
          title: Text(title),
        ),
        drawer: const AppDrawer(),
        body: Body()
        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       SvgPicture.network(
        //       dogUrl,
        //       placeholderBuilder: (context) => CircularProgressIndicator(),
        //       height: 128.0,
        //       ),
        //     ],
        //   ),
        // ),
        // floatingActionButton: const Icon(Icons.add),
        );
  }
}
