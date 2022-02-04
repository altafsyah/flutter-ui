import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:real_estate/const.dart';
import 'custom_container.dart';

class CustomAppBar extends StatelessWidget {
  Widget? title;
  Widget? leading;
  Widget? trailing;
  CustomAppBar({this.title, this.leading, this.trailing});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomContainer(
          child: leading != null
              ? leading!
              : Icon(
                  IconlyLight.category,
                  color: gray1Color,
                  size: 20,
                ),
        ),
        title != null
            ? title!
            : Row(
                children: [
                  Icon(
                    IconlyBroken.location,
                    color: primaryColor,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'California, ',
                          style: semiBoldText.copyWith(
                              fontSize: 12, color: blackColor),
                          children: [
                        TextSpan(
                            text: 'US',
                            style: regText.copyWith(
                                fontSize: 12, color: gray1Color))
                      ]))
                ],
              ),
        CustomContainer(
          child: trailing != null
              ? trailing!
              : Icon(
                  IconlyLight.notification,
                  color: gray1Color,
                  size: 20,
                ),
        )
      ],
    );
  }
}
