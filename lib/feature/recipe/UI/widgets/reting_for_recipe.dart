import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgStarRating extends StatelessWidget {
  final double rating;
  final int starCount;
  final double size;
  final SvgPicture fullStar;
  final SvgPicture halfStar;
  final SvgPicture emptyStar;

  SvgStarRating({
    required this.rating,
    this.starCount = 5,
    this.size = 15.0,
    required this.fullStar,
    required this.halfStar,
    required this.emptyStar,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(starCount, (index) {
        double starRating = rating - index;

        if (starRating >= 1) {
          return SizedBox(
            width: size,
            height: size,
            child: fullStar,
          );
        } else if (starRating >= 0.5) {
          return SizedBox(
            width: size,
            height: size,
            child: halfStar,
          );
        } else {
          return SizedBox(
            width: size,
            height: size,
            child: emptyStar,
          );
        }
      }),
    );
  }
}
