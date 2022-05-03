import 'package:flutter/material.dart';

class HeaderandSearch extends StatelessWidget {
  const HeaderandSearch({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: size.height * 0.42,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height: size.height * 0.38,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: size.height * 0.05,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(1, 2),
                        blurRadius: 10,
                        color: Colors.amber.withOpacity(0.5))
                  ],
                ),
                child: Stack(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 2),
                      child: TextField(
                        onChanged: null,
                        maxLines: 1,
                        textCapitalization: TextCapitalization.sentences,
                        decoration: InputDecoration(
                            hintText: 'Search',
                            labelStyle: TextStyle(
                              fontFamily: 'FuzzyBubbles',
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      top: 0,
                      bottom: 2,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search_rounded,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Welcome to Petsies!  ',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'FuzzyBubbles',
                    fontSize: 24,
                  ),
                ),
                Container(
                  width: size.width * 0.15,
                  height: size.height * 0.15,
                  child: Image.asset('assets/images/smile.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
