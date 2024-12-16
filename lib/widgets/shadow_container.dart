import 'package:flutter/material.dart';
import 'package:test_project/src/colors.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 29.0,
        vertical: 26.0,
      ),
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(35.25), // Радиус для закругления углов
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.05), // Цвет тени с прозрачностью
            blurRadius: 0.0,
            spreadRadius: 0.0,
            offset: const Offset(2.2, 2.2),
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.15), // Цвет тени с прозрачностью
            blurRadius: 0.0,
            spreadRadius: 0.0,
            offset: const Offset(-1.1, -1.1),
          ),
        ],
      ),
      child: child,
    );
  }
}
