import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Основной класс виджета CustomAnimatedSlider
class CustomAnimatedSlider extends StatefulWidget {
  CustomAnimatedSlider({
    super.key,
    required this.value, // начальное значение слайдера
    required this.min, // минимальное значение слайдера
    required this.max, // максимальное значение слайдера
    this.barColor = const Color(0xFF308B85), // цвет ползунка
    this.rightFillColor =
        const Color(0xFFECB88B), // цвет заполнения справа от ползунка
    this.leftFillColor =
        const Color(0xFFECB88B), // цвет заполнения слева от ползунка
    this.height = 30.0, // высота слайдера
    this.barWidth = 6.0, // ширина ползунка
    this.onChange, // функция, вызываемая при изменении значения слайдера
    this.labelStyle = const TextStyle(
      fontSize: 13.0, // размер текста меток
      color: Color(0xFF308B85), // цвет текста меток
      fontWeight: FontWeight.w800, // толщина шрифта текста меток
    ),
    BorderRadius? cornerRadius, // радиус скругления углов
  }) : _cornerRadius = cornerRadius ?? BorderRadius.circular(24);

  final double value;
  final double min;
  final double max;
  final Color barColor;
  final Color rightFillColor;
  final Color leftFillColor;
  final double height;
  final double barWidth;
  final BorderRadius _cornerRadius;
  final TextStyle labelStyle;
  final void Function(double value)? onChange;

  @override
  State<CustomAnimatedSlider> createState() => _CustomAnimatedSliderState();
}

// Длительность анимации
const Duration _animationDuration = Duration(milliseconds: 0);

// Горизонтальные отступы для ползунка
const double _barHorizontalMargins = 3.0;

// Горизонтальные отступы для меток
const double _labelsHorizontalMargins = 12.0;

class _CustomAnimatedSliderState extends State<CustomAnimatedSlider> {
  // Ширина перетаскиваемого ползунка с учетом отступов
  late final double _dragBarWidth =
      widget.barWidth + (_barHorizontalMargins * 2);

  // Размер области для перетаскивания
  late final Size _dragRegion = Size(_dragBarWidth + 15, widget.height);

  // Объект для уведомления о изменении значения прогресса
  late final ValueNotifier<double> _progressNotifier =
      ValueNotifier<double>(widget.value);

  // Объект для уведомления о переполнении меток
  late final ValueNotifier<bool> _overflowingNotifier =
      ValueNotifier<bool>(false);

  // Получение стиля меток с учетом состояния переполнения
  TextStyle get _labelStyle {
    return widget.labelStyle.copyWith(
      color: widget.labelStyle.color
          ?.withOpacity(_overflowingNotifier.value ? 1 : 0.7),
    );
  }

  // Обработка изменения размера текста меток
  void _onTextSizeChange(
      double textWidth, double leftBoxWidth, double rightBoxWidth) {
    double labelWidth = textWidth + _labelsHorizontalMargins;

    if (leftBoxWidth < labelWidth || rightBoxWidth < labelWidth) {
      _overflowingNotifier.value = true;
    } else {
      _overflowingNotifier.value = false;
    }
  }

  // Обработка горизонтального перетаскивания ползунка
  void _onHorizontalDragUpdate(
      DragUpdateDetails dragDetails, double sliderWidth) {
    double position =
        (dragDetails.localPosition.dx - _dragBarWidth / 2) / sliderWidth;
    _progressNotifier.value =
        (widget.min + (position.clamp(0.0, 1.0) * (widget.max - widget.min)))
            .clamp(widget.min, widget.max);
    widget.onChange?.call(_progressNotifier.value);
    HapticFeedback.selectionClick();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          double sliderWidth = constraints.maxWidth;
          double sliderHeight = constraints.maxHeight;
          double sliderWidthWithoutBar = sliderWidth - _dragBarWidth;

          return ValueListenableBuilder<double>(
            valueListenable: _progressNotifier,
            builder: (context, progress, _) {
              double progressRatio =
                  (progress - widget.min) / (widget.max - widget.min);
              double leftBoxWidth = sliderWidthWithoutBar * progressRatio;
              double rightBoxWidth = sliderWidthWithoutBar - leftBoxWidth;
              int progressInPercentage = ((progressRatio) * 100).toInt();

              return Stack(
                clipBehavior: Clip.none,
                children: [
                  Row(
                    children: [
                      // Левая часть слайдера
                      AnimatedContainer(
                        width: leftBoxWidth,
                        height: sliderHeight,
                        duration: _animationDuration,
                        decoration: BoxDecoration(
                          color: widget.leftFillColor,
                          borderRadius: widget._cornerRadius,
                        ),
                      ),

                      // Ползунок
                      _DraggableBar(
                        color: widget.barColor,
                        width: widget.barWidth,
                        cornerRadius: widget._cornerRadius,
                      ),

                      // Правая часть слайдера
                      AnimatedContainer(
                        width: rightBoxWidth,
                        height: sliderHeight,
                        duration: _animationDuration,
                        decoration: BoxDecoration(
                          color: widget.rightFillColor,
                          borderRadius: widget._cornerRadius,
                        ),
                      ),
                    ],
                  ),

                  // Метки прогресса
                  ValueListenableBuilder<bool>(
                    valueListenable: _overflowingNotifier,
                    builder: (context, isOverflowing, child) {
                      return AnimatedPositioned.fromRect(
                        duration: _animationDuration,
                        rect: Rect.fromCenter(
                          width: sliderWidth,
                          height: sliderHeight,
                          center: Offset(sliderWidth / 2,
                              sliderHeight / (isOverflowing ? -2 : 2)),
                        ),
                        child: child!,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: _labelsHorizontalMargins),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Левая метка прогресса
                          ComputedText(
                            '${widget.min.toInt() + ((widget.max - widget.min) * progressRatio).toInt()} мин',
                            style: _labelStyle,
                            onSizeChange: (double textWidth) =>
                                _onTextSizeChange(
                                    textWidth, leftBoxWidth, rightBoxWidth),
                          ),

                          // Правая метка прогресса
                          ComputedText(
                            '${widget.max.toInt()} мин',
                            style: _labelStyle,
                            onSizeChange: (size) {},
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Область для перетаскивания с дополнительной областью для жестов
                  Positioned.fromRect(
                    rect: Rect.fromCenter(
                      width: _dragRegion.width,
                      height: _dragRegion.height,
                      center: Offset(
                          leftBoxWidth + _dragBarWidth / 2, sliderHeight / 2),
                    ),
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onHorizontalDragUpdate: (dragDetails) =>
                          _onHorizontalDragUpdate(dragDetails, sliderWidth),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

// Класс для перетаскиваемого ползунка
class _DraggableBar extends StatelessWidget {
  const _DraggableBar({
    required this.width,
    required this.color,
    required this.cornerRadius,
  });

  final double width;
  final Color color;
  final BorderRadiusGeometry cornerRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: cornerRadius,
      ),
      margin: const EdgeInsets.symmetric(horizontal: _barHorizontalMargins),
    );
  }
}

// Класс для вычисления размера текста
class ComputedText extends StatefulWidget {
  const ComputedText(
    this.text, {
    Key? key,
    required this.style,
    this.onSizeChange,
  }) : super(key: key);

  final String text;
  final TextStyle style;
  final void Function(double textWidth)? onSizeChange;

  @override
  State<ComputedText> createState() => _ComputedTextState();
}

class _ComputedTextState extends State<ComputedText> {
  // Вычисление размера текста
  Size _calculateSize() {
    final textLayout = TextPainter(
      text: TextSpan(text: widget.text, style: widget.style),
      maxLines: 1,
      textScaler: TextScaler.noScaling,
      textDirection: TextDirection.ltr,
    )..layout();
    return textLayout.size;
  }

  @override
  void initState() {
    super.initState();
    // Когда виджет первый раз создается, мы вызываем onSizeChange с шириной текста
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onSizeChange?.call(_calculateSize().width);
    });
  }

  @override
  void didUpdateWidget(covariant ComputedText oldWidget) {
    // Если текст виджета изменился, мы снова вызываем onSizeChange с новой шириной текста
    if (oldWidget.text != widget.text) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        widget.onSizeChange?.call(_calculateSize().width);
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    // Возвращаем текстовый виджет с заданным стилем
    return Text(
      widget.text,
      style: widget.style,
    );
  }
}
