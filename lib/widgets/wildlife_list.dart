import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:ui_designs/models/image_model.dart';
import 'package:ui_designs/screens/puppy_info_wildlife.dart';

class WildLife extends StatelessWidget {
  WildLife({Key? key}) : super(key: key);

  final List<ImageModel> _wildLife = [
    ImageModel(
      name: 'Leon',
      image: 'assets/images/leon-s-tVK33wnOuM0-unsplash.jpg',
    ),
    ImageModel(
      name: 'Wolfgang',
      image: 'assets/images/wolfgang-hasselmann-T2B3dRRDuqY-unsplash.jpg',
    ),
    ImageModel(
      name: 'Frank',
      image: 'assets/images/jozsef-szabo-K0gfCLbThWM-unsplash.jpg',
    ),
    ImageModel(
      name: 'Bodi',
      image: 'assets/images/frank-eiffert-3AioZKDLCDg-unsplash.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Container(
        height: size.height * 0.4,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: size.width * 0.04,
            );
          },
          itemCount: _wildLife.length,
          itemBuilder: (context, index) {
            return Stack(children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return PuppyinfoWild(
                          petName: _wildLife[index].name,
                          petImage: _wildLife[index].image,
                        );
                      },
                    ),
                  );
                },
                splashColor: Colors.amber[200],
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: size.width * 0.69,
                  height: size.height * 0.4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      _wildLife[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 20,
                child: Chip(
                  backgroundColor: Colors.white,
                  avatar: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      _wildLife[index].image,
                    ),
                  ),
                  labelStyle: const TextStyle(
                      fontFamily: 'FuzzyBubbles', color: Colors.amber),
                  label: Text(_wildLife[index].name),
                ),
              ),
            ]);
          },
        ),
      ),
    );
  }
}

// assets/images/leon-s-tVK33wnOuM0-unsplash.jpg

// assets/images/wolfgang-hasselmann-T2B3dRRDuqY-unsplash.jpg

// assets/images/jozsef-szabo-K0gfCLbThWM-unsplash.jpg
// assets/images/frank-eiffert-3AioZKDLCDg-unsplash.jpg