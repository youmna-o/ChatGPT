// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class Constants {
  static const String baseUrl = "https://api.openai.com/v1";
  static const String endPointImage = "/images/generations";
  static const String endPointText= "/completions";
  static const int apiTimeOut = 60000;
  static const String empty = "";
  static const int zero = 0;

  static final glowBoxShadow = [
  BoxShadow(
    color: Colors.black.withOpacity(.4),
    blurRadius: 6.0,
    spreadRadius: 3.0,
    offset: const Offset(
      0.0,
      3.0,
    ),
  ),
];

static const  darkColor = Color.fromRGBO(48, 48, 48, 1);
}
