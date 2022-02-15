import 'package:flutter/material.dart';

class LabeledContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String text;
  final Color textColor;


  const LabeledContainer({
    Key? key,
    this.width,
    this.height = double.infinity,
    this.color,
    @required this.text,
    this.textColor,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
