import 'package:flutter/material.dart';

import '/models/image_model.dart';
import '/screens/puppy_info_latest.dart';

class LatestPictures extends StatelessWidget {
  LatestPictures({Key? key}) : super(key: key);

  final List<ImageModel> _latestPictures = [
    ImageModel(
      name: 'Karsten',
      image: 'assets/images/karsten-winegeart-Qb7D1xw28Co-unsplash.jpg',
    ),
    ImageModel(
      name: 'Laula',
      image: 'assets/images/laula-co-pFBkP9RjVEw-unsplash.jpg',
    ),
    ImageModel(
      name: 'Lucas',
      image: 'assets/images/lucas-ludwig-CMnikGdcIjo-unsplash.jpg',
    ),
    ImageModel(
      name: 'Melisa',
      image: 'assets/images/melisa-morales-mi7wfJi9apU-unsplash.jpg',
    ),
    ImageModel(
      name: 'Bodi',
      image: 'assets/images/bodi-raw-GZ_MoxyMUsI-unsplash.jpg',
    ),
    ImageModel(
      name: 'Ferenc',
      image: 'assets/images/ferenc-horvath-2PdUTq5TIss-unsplash.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
        height: size.height * 0.4,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: size.width * 0.04,
            );
          },
          itemCount: _latestPictures.length,
          itemBuilder: (context, index) {
            return Stack(children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return PuppyinfoLatest(
                          petName: _latestPictures[index].name,
                          petImage: _latestPictures[index].image,
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
                      _latestPictures[index].image,
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
                      _latestPictures[index].image,
                    ),
                  ),
                  labelStyle: const TextStyle(
                      fontFamily: 'FuzzyBubbles', color: Colors.amber),
                  label: Text(_latestPictures[index].name),
                ),
              ),
            ]);
          },
        ),
      ),
    );
  }
}

// assets\images\karsten-winegeart-Qb7D1xw28Co-unsplash.jpg

// assets/images/laula-co-pFBkP9RjVEw-unsplash.jpg

// assets/images/lucas-ludwig-CMnikGdcIjo-unsplash.jpg

// assets/images/melisa-morales-mi7wfJi9apU-unsplash.jpg

// assets/images/bodi-raw-GZ_MoxyMUsI-unsplash.jpg

// assets/images/ferenc-horvath-2PdUTq5TIss-unsplash.jpg
