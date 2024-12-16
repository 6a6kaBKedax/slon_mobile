import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/gen/assets.gen.dart';
import 'package:test_project/src/colors.dart';
import 'package:test_project/widgets/app_bar.dart';
import 'package:test_project/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Assets.gradient.svg(),
          Positioned(
            bottom: 0.0,
            child: Assets.slonPng.image(
              scale: 1.5
            ),
          ),
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            children: [
              const SafeArea(
                child: CustomAppBar(),
              ),
              const Gap(48.0),
              Text(
                'Добро пожаловать в безопасный интернет',
                style: GoogleFonts.inter(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textColorWhite,
                ),
              ),
              const Gap(16.0),
              Text(
                'С нашим блокировщиком рекламы, а так же трекеров и локальной сети. Вы можете ощущать безопасность даже в общедоступных сетях!',
                style: GoogleFonts.inter(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textColorWhite50,
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: double.infinity,
                child: CustomButton.light(
                  text: 'Использовать наши настройки',
                  onPressed: () {},
                ),
              ),
              const Gap(12.0),
              SizedBox(
                width: double.infinity,
                child: CustomButton.dark(
                  text: 'Хочу настроить сам',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
