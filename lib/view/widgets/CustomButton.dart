import 'package:flutter/material.dart';
import 'package:petology/Constants/styles.dart';


class CustomButton extends StatelessWidget {
Color? textColor;
Color? borderColor;
double?height;
double?width;
double?borderRadius;


CustomButton(
      {this.textColor,
        this.borderRadius=18,
        this.height,
        this.width,
      this.borderColor,
      this.backColor,
      this.text,
      this.fontSize,
      this.onPressed,
      this.image});

  Color? backColor;
String? text;
double? fontSize;
VoidCallback? onPressed;
var image;

  @override
  Widget build(BuildContext context) {
    return (image ==null )?TextButton(
      onPressed: onPressed,

        child: Text("$text",
            style: TextStyle(
                fontSize: fontSize, color: textColor)),
        style: ButtonStyle(
          padding:
          MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(
                  horizontal: width!, vertical: height!)),

          shape: MaterialStateProperty.all<
              RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(borderRadius!),
                  side: BorderSide(
                      color: borderColor!,width: 2
                  ))),
          backgroundColor:
          MaterialStateProperty.all<Color>(
               backColor!),
        ),
        ):
    TextButton(
      onPressed: onPressed,

      child: Row(
        mainAxisAlignment: MainAxisAlignment
            .center,
        children: [
          Image.asset(
            '$image',
            height: 20,
          ),
          const SizedBox(
            width: paddingLarge/4,
          ),
          Text("$text",
              style: TextStyle(
                  fontSize: fontSize, color: textColor)),

        ],
      ),
      style: ButtonStyle(
        padding:
        MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
                horizontal: width!, vertical: height!)),

        shape: MaterialStateProperty.all<
            RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(borderRadius!),
                side: BorderSide(
                    color: borderColor!,
                  width: 2
                ))),
        backgroundColor:
        MaterialStateProperty.all<Color>(
            backColor!),
      ),
    );
  }
}
