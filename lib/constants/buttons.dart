
import 'package:flutter/material.dart';

//Elevated Button
Widget elevatedBtnApp(

    {Color? colorx,
      double? widthx,
      double? heightx,
      required Widget childx,
      RoundedRectangleBorder? shapex,
      required Function onPressedx,
      Key? keyx,
      Color? disabledColorx,
      Color? disabledTextColorx,
      Color? textColorx}) {

  if (disabledTextColorx == null && disabledColorx == null) {
    disabledTextColorx = colorx;
  }
  textColorx ??= colorx;
  return SizedBox(
    width: widthx,
    height: heightx,
    child: ElevatedButton(
        key: keyx,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            // text color
            (Set<MaterialState> states) =>
                states.contains(MaterialState.disabled)
                    ? disabledTextColorx
                    : textColorx,
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            // background color    this is color:
            (Set<MaterialState> states) =>
                states.contains(MaterialState.disabled)
                    ? disabledColorx
                    : colorx,
          ),
          shape: MaterialStateProperty.all(shapex),
        ),
        onPressed: onPressedx as void Function(),
        child: childx),
  );
}

//Outline Button
Widget outlinedBtnApp(
    {Color? colorx,
      double? widthx,
      double? heightx,
      required Widget childx,
      RoundedRectangleBorder? shapex,
      required Function onPressedx,
      Key? keyx,
      Color? disabledColorx,
      Color? disabledTextColorx,
      Color? textColorx}) {
  if (disabledTextColorx == null && disabledColorx == null) {
    disabledTextColorx = colorx;
  }
  textColorx ??= colorx;
  return SizedBox(
    width: widthx,
    height: heightx,
    child: OutlinedButton(
        key: keyx,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            // text color
                (Set<MaterialState> states) => states.contains(MaterialState.disabled)
                ? disabledTextColorx
                : textColorx,
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            // background color
                (Set<MaterialState> states) =>
            states.contains(MaterialState.disabled) ? disabledColorx : colorx,
          ),
          shape: MaterialStateProperty.all(shapex),
        ),
        onPressed: onPressedx as void Function(),
        child: childx),
  );
}


//Text Button
Widget textButtonApp(
    {Color? colorx,
      required Widget childx,
      RoundedRectangleBorder? shapex,
      required Function onPressedx,
      Key? keyx,
      Color? disabledColorx,
      Color? disabledTextColorx,
      Color? textColorx}) {

  if (disabledTextColorx == null && disabledColorx == null) {
    disabledTextColorx = colorx;
  }
  textColorx ??= colorx;
  return SizedBox(
    child: TextButton(
        key: keyx,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            // text color
            (Set<MaterialState> states) =>
                states.contains(MaterialState.disabled)
                    ? disabledTextColorx
                    : textColorx,
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            // background color    this is color:
            (Set<MaterialState> states) =>
                states.contains(MaterialState.disabled)
                    ? disabledColorx
                    : colorx,
          ),
          shape: MaterialStateProperty.all(shapex),
        ),
        onPressed: onPressedx as void Function(),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: childx)),
  );
}


