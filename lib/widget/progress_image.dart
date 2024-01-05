import 'package:flutter/material.dart';

Widget progressImage(bool visible, String path) {
  return Visibility(
    visible: visible,
    child: Container(
      width: 300,
      height: 320,
      child: Image.asset(path),
    ),
  );
}
