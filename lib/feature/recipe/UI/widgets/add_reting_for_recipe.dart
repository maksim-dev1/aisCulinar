import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddStarRating extends StatefulWidget {
  final double initialRating;
  final int starCount;
  final double size;
  final SvgPicture fullStarGrey;
  final SvgPicture fullStarYellow;
  final ValueChanged<double>? onRatingChanged; // Добавленный параметр

  AddStarRating({
    required this.initialRating,
    this.starCount = 5,
    this.size = 20.0,
    required this.fullStarGrey,
    required this.fullStarYellow,

    this.onRatingChanged, // Инициализация параметра
  });

  @override
  _AddStarRatingState createState() => _AddStarRatingState();
}

class _AddStarRatingState extends State<AddStarRating> {
  late double _currentRating;
  late List<Widget> _starWidgets;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.initialRating;
    _updateStarWidgets();
  }

  void _updateStarWidgets() {
    _starWidgets = List.generate(widget.starCount, (index) {
      if (index < _currentRating) {
        return widget.fullStarYellow;
      } else {
        return widget.fullStarGrey;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        final RenderBox renderBox = context.findRenderObject() as RenderBox;
        final double starWidth = widget.size; // Adjusted width for tapping
        final double offset =
            renderBox.globalToLocal(details.globalPosition).dx;
        final int tappedStar = (offset / starWidth).floor();

        setState(() {
          _currentRating = tappedStar + 1.0;
          _updateStarWidgets();
        });

        if (widget.onRatingChanged != null) {
          widget.onRatingChanged!(_currentRating); // Вызов коллбэка
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: _starWidgets.map((star) {
          return Container(
            width: widget.size,
            height: widget.size,
            child: star,
          );
        }).toList(),
      ),
    );
  }
}
