import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../style/custom_color.dart';

Widget buildSlider(List<String> images) {
  return ClipRRect(
    // borderRadius: BorderRadius.circular(15),
    child: ImageSlideshow(
      height: 500,
      // width: double.infinity,
      indicatorColor: CustomColor.secondaryColor,
      isLoop: true,
      autoPlayInterval: 5000,
      children: images.map((image) {
        return Image.network(
          image,
          // height: 500,
          width: double.infinity,
          // width: MediaQuery.of(context).size.width,
          // fit: BoxFit.contain,
          fit: BoxFit.cover,
        );
      }).toList(),
    ),
  );
}
