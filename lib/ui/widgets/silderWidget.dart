import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

Widget buildSlider(List<String> images) {
  return ClipRRect(
    // borderRadius: BorderRadius.circular(15),
    child: ImageSlideshow(
      height: 500,
      width: double.infinity,
      indicatorColor: Colors.blueGrey[800],
      isLoop: true,
      autoPlayInterval: 5000,
      children: images.map((image) {
        return Image.asset(
          image,
          // height: 400,
          // width: double.infinity,
          // width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        );
      }).toList(),
    ),
  );
}
