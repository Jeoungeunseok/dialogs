import 'package:flutter/material.dart';

basicTextButton({
  required String buttonText,
  required Function() onPressed,
}) {
  return TextButton(
    onPressed: onPressed,
    child: Text(
      buttonText,
      style: const TextStyle(fontSize: 15),
    ),
  );
}
