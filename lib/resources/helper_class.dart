import 'package:flutter/material.dart';

class HelperClass extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Color bgColor;
  const HelperClass({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 768) {
          return Container(
            // height: size.height,
            width: size.width,
            alignment: Alignment.center,
            color: bgColor,
            child: mobile,
          );
        } else if (constraints.maxWidth < 1200) {
          return Container(
            // height: size.height,
            width: size.width,
            alignment: Alignment.center,
            color: bgColor,
            child: tablet,
          );
        } else {
          return Container(
            // height: size.height,
            width: size.width,
            alignment: Alignment.center,
            color: bgColor,
            child: desktop,
          );
        }
      },
    );
  }
}
