import 'package:flutter/material.dart';

Widget onboardingScroll(bool condition) {
  Color color = condition ? Color(0xffE8BE13) : Colors.transparent;
  Color borderColor = condition ? Colors.transparent : Color(0xffE0E0E1);
  return Container(
    width: 17.05,
    height: 6.57,
    decoration: BoxDecoration(
      border: Border.all(width: 1.09, color: borderColor),
      borderRadius: BorderRadius.circular(3.28),
      color: color,
    ),
  );
}