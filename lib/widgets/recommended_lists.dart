import 'package:flutter/material.dart';
import 'package:ui_designs/screens/puppy_info_recommended.dart';

import '/models/image_list.dart';
import '/models/image_model.dart';

class RecommendedLists extends StatefulWidget {
  RecommendedLists({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<RecommendedLists> createState() => _RecommendedListsState();
}

class _RecommendedListsState extends State<RecommendedLists> {
  final List<ImageModel> _imageList = [
    ImageModel(
      name: 'Alvan',
      image: 'assets/images/alvan-nee-8g0D8ZfFXyA-unsplash.jpg',
    ),
    ImageModel(
      name: 'Bolly',
      image: 'assets/images/alvan-nee-eoqnr8ikwFE-unsplash.jpg',
    ),
    ImageModel(
      name: 'Alvan',
      image: 'assets/images/alvan-nee-ZCHj_2lJP00-unsplash.jpg',
    ),
    ImageModel(
      name: 'Bonnie',
      image: 'assets/images/bonnie-kittle-MUcxe_wDurE-unsplash.jpg',
    ),
    ImageModel(
      name: 'Ferenc',
      image: 'assets/images/ferenc-horvath-2PdUTq5TIss-unsplash.jpg',
    ),
    ImageModel(
      name: 'Karsten',
      image: 'assets/images/karsten-winegeart-oU6KZTXhuvk-unsplash.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height * 0.38,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: _imageList.length,
            itemBuilder: (ctx, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Column(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(20),
                      radius: 100,
                      splashColor: Colors.amber.withOpacity(0.2),
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) {
                              return Puppyinfo(
                                petName: _imageList[index].name,
                                petImage: _imageList[index].image,
                              );
                            },
                          ),
                        );
                      },
                      child: Container(
                        height: widget.size.height * 0.2,
                        width: widget.size.width * 0.3,
                        margin: const EdgeInsets.only(bottom: 1, top: 20),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.amber.withOpacity(0.2),
                                blurRadius: 4,
                                offset: const Offset(4, 8),
                              )
                            ]),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: Image.asset(
                            _imageList[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: widget.size.height * 0.1,
                      width: widget.size.width * 0.3,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.amber.withOpacity(0.2),
                              blurRadius: 4,
                              offset: Offset(4, 8),
                            )
                          ]),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Chip(
                                backgroundColor: Colors.white,
                                label: Text(
                                  _imageList[index].name,
                                  overflow: TextOverflow.clip,
                                  style: const TextStyle(
                                      fontFamily: 'FuzzyBubbles',
                                      color: Colors.amber),
                                ),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                              ),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  _imageList[index].isFavourite =
                                      !_imageList[index].isFavourite;
                                });
                              },
                              icon: _imageList[index].isFavourite == false
                                  ? const Icon(Icons.favorite_outline_rounded,
                                      color: Colors.amber)
                                  : const Icon(Icons.favorite_rounded,
                                      color: Colors.amber),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
