import 'package:flutter/material.dart';

const Widget horizontalSpaceTiny = SizedBox(width: 10.0);
const Widget horizontalSpaceSmall = SizedBox(width: 20.0);
const Widget horizontalSpaceMedium = SizedBox(width: 40.0);

const Widget verticalSpaceTiny = SizedBox(height: 10.0);
const Widget verticalSpaceSmall = SizedBox(height: 20.0);
const Widget verticalSpaceMedium = SizedBox(height: 40.0);
const Widget verticalSpaceLarge = SizedBox(height: 60.0);
const Widget verticalSpaceMassive = SizedBox(height: 120.0);

Widget spacedDivider = Container(
  color: Color(0xFF647787),
  height: 1,
);

Widget verticalSpace(double height) => SizedBox(height: height);
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

// Field Variables
const EdgeInsets fieldPadding = const EdgeInsets.symmetric(horizontal: 20);

