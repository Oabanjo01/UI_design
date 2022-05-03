import 'package:flutter/material.dart';

class ImageModel {
  final String name;
  final String image;
  bool isFavourite;

  ImageModel({
    required this.name,
    this.isFavourite = false,
    required this.image ,
  });
}
