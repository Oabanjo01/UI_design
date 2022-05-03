import 'package:flutter/material.dart';

class RecommendedHeader extends StatelessWidget {
  const RecommendedHeader({
    Key? key,
    required this.press,
    required this.title
  }) : super(key: key);
  final Function press;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              child: Stack(children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontFamily: 'FuzzyBubbles',
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    color: Colors.amber[300]!.withOpacity(0.2),
                    height: 1,
                  ),
                )
              ]),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                shape: StadiumBorder()
              ),
              child: Text('more..'),
            ),
          )
        ],
      ),
    );
  }
}
