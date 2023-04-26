import 'package:flutter/material.dart';

void showSnakBar(BuildContext context, String massage, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 2),
      backgroundColor: color,
      content: Center(
          child: Text(
        massage,
        style: const TextStyle(
          fontSize: 15,
        ),
      )),
    ),
  );
}
