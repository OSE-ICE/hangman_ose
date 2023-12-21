import 'package:flutter/cupertino.dart';

Widget progressImage(bool visible, String path) {
  return Visibility(
    visible: visible,
    child: Container(
      width: 300,
      height: 350,
      child: Image.asset(path),
    ),
  );
}
