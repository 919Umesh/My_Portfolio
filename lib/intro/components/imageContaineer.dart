import 'dart:math';
import 'package:flutter/material.dart';

class SquareImageContainer extends StatelessWidget {
  const SquareImageContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final containerSize = min(size.width, size.height) * 0.6;
    final borderRadius = containerSize / 2;

    return Center(
      child: Container(
        width: containerSize,
        height: containerSize,
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 15,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image.asset(
            'assets/images/photo1.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
