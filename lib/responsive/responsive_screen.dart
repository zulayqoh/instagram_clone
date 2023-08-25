import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/dimensions.dart';

class ResponsiveScreen extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveScreen({Key? key, required this.mobile, this.tablet, required this.desktop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileScreenSize) return mobile;
      if (constraints.minWidth > mobileScreenSize && constraints.maxWidth < tabScreenSize && tablet != null) return tablet!;
      return desktop;
    });
  }
}
