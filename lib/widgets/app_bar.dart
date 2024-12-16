import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/gen/assets.gen.dart';
import 'package:test_project/src/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    this.onTapSettings,
    super.key,
  });

  final VoidCallback? onTapSettings;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Assets.logo.svg(),
            const Gap(12.0),
            Text(
              'Slon VPN',
              style: GoogleFonts.inter(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
                color: AppColors.textColorWhite,
              ),
            ),
          ],
        ),
        if (onTapSettings != null)
          GestureDetector(
            onTap: onTapSettings,
            child: Assets.buttons.settingsButton.svg(),
          ),
      ],
    );
  }
}
