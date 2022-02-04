import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:real_estate/const.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? padding;
  CustomContainer({@required this.child, this.color, this.padding});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding != null ? padding! : 10),
      child: child!,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color == null ? Colors.white : color!,
      ),
    );
  }
}
