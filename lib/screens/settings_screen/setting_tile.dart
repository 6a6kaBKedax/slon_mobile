import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/src/colors.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    required this.title,
    required this.subTitle,
    this.trailing,
    this.onTap,
    super.key,
  });

  final String title;
  final String subTitle;
  final VoidCallback? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 17.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: AppColors.containerColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.inter(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textColorWhite,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: GoogleFonts.inter(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColorWhite50,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(8.0),
            if (trailing != null) trailing!,
          ],
        ),
      ),
    );
  }
}
