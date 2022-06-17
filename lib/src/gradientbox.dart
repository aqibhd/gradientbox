import 'package:flutter/material.dart';

import '../gradientbox.dart';

class GradientBox extends StatelessWidget {
  final VoidCallback? onTap;

  final Widget? child;

  final double? height;

  final double? width;

  final double? borderRadius;

  final GradientColors? gradientColors;

  final bool showShadow;

  final Color? shadowColor;

  final AlignmentGeometry? alignment;

  final EdgeInsets? padding;

  final EdgeInsets? margin;

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
