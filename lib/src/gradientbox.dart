import 'package:flutter/material.dart';
import '../gradientbox.dart';

class GradientBox extends StatelessWidget {
  /// If non-null, then defines what will happen on tapping the widget.
  final VoidCallback? onTap;

  /// The [child] contained by the Gradient Box.
  ///
  /// If null, a `Text("Hello World")` widget will be added automatically
  /// and Gradient Box will expand to fill all available space in its parent.
  ///
  /// If the parent provides unbounded constraints, in which case the box
  /// will attempt to be as small as possible.
  ///
  /// This widget can only have one child. To lay out multiple children, let
  /// this widget's child be a widget such as [Row], [Column], or [Stack],
  /// which have a children property. and then provide the children to
  /// that widget.
  final Widget? child;

  final double? height;

  final double? width;

  /// If non-zero, the corners of this widget are rounder by the provide value.
  ///
  /// If null, then the default value is 25.
  final double? borderRadius;

  /// Creates a Linear gradient.
  ///
  /// If non-null, the [colors] argument must be passed in `GradientColors()` .
  ///
  /// If null, then random gradient colors are chosen.
  final GradientColors? gradientColors;

  final bool showShadow;

  /// Adds a shadow to the widget. [showShadow] must to true to see the effect.
  ///
  /// If null, then the default color is `colors.grey`.
  final Color? shadowColor;

  /// Align the [child] within the box.
  ///
  /// If non-null, the Gradient Box will expand to fill its parent and position its
  /// child within itself according to the given value. If the incoming
  /// constraints are unbounded, then the child will be shrink-wrapped instead.
  ///
  /// If null, then will have a default value of `Alignment.center`.
  ///
  /// Ignored if [child] is null.
  final AlignmentGeometry? alignment;

  /// Empty space surrounding the [child].
  final EdgeInsets? padding;

  /// Empty space surrounding the widget.
  final EdgeInsets? margin;

  ///Create a customizable Gradient Box widget with a beautiful gradient.
  const GradientBox(
      {Key? key,
      this.onTap,
      this.alignment,
      this.height,
      this.width,
      this.padding,
      this.margin,
      this.gradientColors,
      this.borderRadius,
      this.showShadow = true,
      this.shadowColor,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      enableFeedback: onTap == null ? false : true,
      child: Container(
        alignment: alignment ?? Alignment.center,
        padding: padding,
        margin: margin,
        height: height ?? MediaQuery.of(context).size.height * 0.25,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 25.0)),
          gradient: LinearGradient(
              colors: gradientColors == null
                  ? GradientColors.random().colors
                  : gradientColors!.colors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          boxShadow: showShadow
              ? [
                  BoxShadow(
                    color: shadowColor ?? Colors.grey,
                    blurRadius: 20,
                    offset: const Offset(0, 6),
                  ),
                ]
              : [],
        ),
        child: child ??
            const Text(
              "Hello World",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
      ),
    );
  }
}
