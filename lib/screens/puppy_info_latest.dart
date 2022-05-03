import 'package:flutter/material.dart';

class PuppyinfoLatest extends StatefulWidget {
  const PuppyinfoLatest({Key? key, required this.petName, required this.petImage})
      : super(key: key);

  static const routename = 'lib/screens/puppy_info.dart';
  final String petName;
  final String petImage;

  @override
  State<PuppyinfoLatest> createState() => _PuppyinfoLatestState();
}

class _PuppyinfoLatestState extends State<PuppyinfoLatest> {
    bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text(widget.petName),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Row(
        children: [
          SizedBox(
            height: size.height * 0.6,
            width: size.width * 0.3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  floatingContainer(size, widget.petName),
                  iconFloatingContainer(
                    size,
                    () {
                      setState(() {
                        _isTapped = !_isTapped;
                      });
                    },
                    _isTapped
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.6,
            width: size.width * 0.7,
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: Image.asset(
                  widget.petImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container iconFloatingContainer(Size size, Function tap, bool isTapped) {
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.17,
      child: Center(
        child: IconButton(
          onPressed: () => tap(),
          icon: Icon(
            (isTapped == false)
                ? Icons.favorite_outline_rounded
                : Icons.favorite_rounded,
            color: Colors.amber[200],
          ),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.amber.withOpacity(0.3),
                offset: const Offset(1, 3))
          ]),
    );
  }

  Container floatingContainer(Size size, String title) {
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.17,
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontFamily: 'FuzzyBubbles', color: Colors.amber),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.amber.withOpacity(0.3),
                offset: const Offset(1, 3))
          ]),
    );
  }
}
