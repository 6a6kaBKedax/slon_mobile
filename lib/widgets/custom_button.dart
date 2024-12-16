import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/src/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.color,
    required this.onPressed,
    required this.text,
    super.key,
  });

  factory CustomButton.dark({
    required final String text,
    final VoidCallback? onPressed,
  }) {
    return CustomButton(
      color: AppColors.darkButtonColor,
      onPressed: onPressed,
      text: text,
    );
  }

  factory CustomButton.light({
    required final String text,
    final VoidCallback? onPressed,
  }) {
    return CustomButton(
      color: AppColors.textColorBlue,
      onPressed: onPressed,
      text: text,
    );
  }

  final Color color;
  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.all(24.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          color: AppColors.textColorWhite,
        ),
      ),
    );
  }
}
