import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/gen/assets.gen.dart';
import 'package:test_project/src/colors.dart';
import 'package:test_project/src/extensions.dart';
import 'package:test_project/widgets/shadow_container.dart';

class AdsBlockCard extends StatelessWidget {
  const AdsBlockCard({
    required this.onTap,
    this.blockTrackValue,
    this.blockAdsValue,
    super.key,
  });

  final int? blockTrackValue;
  final int? blockAdsValue;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Assets.allertIcon.svg(),
                  const Gap(18.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Блокировка рекламы',
                        style: GoogleFonts.inter(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textColorWhite,
                        ),
                      ),
                      Text(
                        'Оптимальные настройки',
                        style: GoogleFonts.inter(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColorWhite50,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(8.0),
              GestureDetector(
                onTap: onTap,
                child: Assets.buttons.backForwardButton.svg(),
              ),
            ],
          ),
          if (blockTrackValue != null && blockAdsValue != null)
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Заблокировано трекеров',
                        style: GoogleFonts.inter(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColorBlue,
                        ),
                      ),
                      Text(
                        blockTrackValue!.toFormattedString(),
                        style: GoogleFonts.inter(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textColorWhite,
                        ),
                      ),
                    ],
                  ),
                  const Gap(8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Заблокировано рекламы',
                        style: GoogleFonts.inter(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColorBlue,
                        ),
                      ),
                      Text(
                        blockAdsValue!.toFormattedString(),
                        style: GoogleFonts.inter(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textColorWhite,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
