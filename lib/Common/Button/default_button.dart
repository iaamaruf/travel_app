import 'package:flutter/material.dart';


class DefaultButtonWithGradient extends StatelessWidget {
  DefaultButtonWithGradient({
    Key? key,
    this.buttonText,
    this.iconData,
    this.onTap,
    this.color = const Color(0xFF4F89C9),
    this.text_color = const Color(0xFFffffff),
    this.horizontalPading = 10,
    this.paddingTop = 20,
    this.paddingBottom = 20,
    this.width,
    this.linearGradient,
    this.textSize = 18,
  }) : super(key: key);

  final String? buttonText;
  final IconData? iconData;
  final Color color;
  final Color text_color;
  final Function()? onTap;
  double horizontalPading;
  double ? width;
  double  paddingTop;
  double  paddingBottom;
  double textSize;
  final LinearGradient? linearGradient;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 0, right: horizontalPading,top: paddingTop,bottom: paddingBottom),
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        //transform: Matrix4.skewX(-.2),
        decoration: BoxDecoration(
          color: Colors.blue,
            borderRadius: BorderRadius.circular(15),

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText!,
              style:  TextStyle(
                  color: text_color,
                  fontSize: textSize,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w500),
            ),
            if (iconData != null)
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    iconData,
                    color: Colors.white,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}