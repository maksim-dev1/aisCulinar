import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RatingWidget extends StatelessWidget {
  final double rating;
  final int starCount;
  final double size;
  final SvgPicture fullStarGrey;
  final SvgPicture fullStarYellow;
  

  RatingWidget({
    required this.rating,
    this.starCount = 5,
    this.size = 20.0,
    required this.fullStarGrey,
    required this.fullStarYellow,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> starWidgets = List.generate(starCount, (index) {
      if (index < rating) {
        return fullStarYellow;
      } else {
        return fullStarGrey;
      }
    });

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: starWidgets.map((star) {
        return Container(
          width: size,
          height: size,
          child: star,
        );
      }).toList(),
    );
  }
}
