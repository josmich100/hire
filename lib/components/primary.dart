import 'package:flutter/cupertino.dart';
import 'package:hire/utils/colors.dart';

class PrimaryText extends StatelessWidget {
  final double size;
  final Color color;
  final TextOverflow overflow;
  final FontWeight fontWeight;
  final String text;
  const PrimaryText(
      {Key? key,
      this.size :16,
      this.color: AnanabColor.primaryColor,
      this.fontWeight: FontWeight.w600,
      this.overflow: TextOverflow.visible,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
