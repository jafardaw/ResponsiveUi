import 'package:flutter/material.dart';

double getResponsevFontSize(
  BuildContext context, {
  required double fontSize,
}) {
  double scalFactor = getScalFactor(context)();
  double respomsevFontSize = fontSize * scalFactor;
  double lowerLimit = fontSize * .8;

  double upperLimit = fontSize * 1.2;
  double result = respomsevFontSize.clamp(lowerLimit, upperLimit);
  return result;
}

getScalFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'asasa',
      style: TextStyle(
        fontSize: getResponsevFontSize(context, fontSize: 16),
      ),
    );
  }
}
