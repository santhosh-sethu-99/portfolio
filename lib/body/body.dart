import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'bodyDesktop.dart';
import 'bodyMobileOrTablet.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: BodyMobileOrTablet(),
      tablet: BodyMobileOrTablet(),
      desktop: BodyDesktop(),
    );
  }
}
