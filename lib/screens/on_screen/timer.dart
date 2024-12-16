import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/src/colors.dart';
import 'package:test_project/src/extensions.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Подключено',
          style: GoogleFonts.inter(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: AppColors.textColorBlue,
          ),
        ),
        Text(
          12345.toTimeFormat(),
          style: GoogleFonts.inter(
            fontSize: 56.0,
            fontWeight: FontWeight.w600,
            color: AppColors.textColorWhite,
          ),
        ),
        Text(
          'Нажмите, чтобы отключиться',
          style: GoogleFonts.inter(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: AppColors.textColorWhite50,
          ),
        ),
      ],
    );
  }
}
