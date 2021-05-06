import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'appBarTabletOrDesktop.dart';
import 'appBarMobile.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppBarMobile(),
      tablet: AppBarTabletOrDesktop(),
      desktop: AppBarTabletOrDesktop(),
    );
  }
}
