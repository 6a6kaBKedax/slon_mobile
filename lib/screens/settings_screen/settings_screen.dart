import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/screens/settings_screen/setting_tile.dart';
import 'package:test_project/src/colors.dart';
import 'package:test_project/widgets/app_bar.dart';
import 'package:test_project/widgets/custom_button.dart';
import 'package:test_project/widgets/switch.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21.0),
        child: ListView(
          children: [
            const SafeArea(
              child: CustomAppBar(),
            ),
            const Gap(48.0),
            Text(
              'Базовая настройка приложения',
              style: GoogleFonts.inter(
                fontSize: 32.0,
                fontWeight: FontWeight.w500,
                color: AppColors.textColorWhite,
              ),
            ),
            const Gap(24.0),
            SettingTile(
              title: 'Блокировка рекламы',
              subTitle: 'Экспериментальный',
              trailing: CustomSwitch(
                onChanged: (value) {},
              ),
            ),
            const Gap(8.0),
            SettingTile(
              title: 'Блокировка локальной сети',
              subTitle: 'Экспериментальный',
              trailing: CustomSwitch(
                onChanged: (value) {},
              ),
            ),
            const Gap(8.0),
            Divider(
              color: AppColors.dividerColor,
              indent: 100.0,
              endIndent: 100.0,
            ),
            const Gap(8.0),
            SettingTile(
              title: 'Кастомный DNS сервер',
              subTitle: 'Если хотите использовать свой',
              trailing: CustomSwitch(
                onChanged: (value) {},
              ),
            ),
            const Gap(8.0),
            SettingTile(
              title: 'Настройка DNS',
              subTitle: '1.1.1.1 / 8.8.8.8',
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.textColorBlue,
              ),
              onTap: () {},
            ),
            const Gap(8.0),
          ],
        ),
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
                  text: 'Готово, поехали!',
                  onPressed: () {},
                ),
              ),
              const Gap(16.0),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.inter(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColorWhite50,
                  ),
                  children: [
                    const TextSpan(text: 'Нажимая на кнопку '),
                    TextSpan(
                      text: '“Готово, поехали!”',
                      style: GoogleFonts.inter(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColorWhite,
                      ),
                    ),
                    const TextSpan(text: ', Вы автоматически соглашаетесь с '),
                    TextSpan(
                      text: 'политикой использования приложения.',
                      style: GoogleFonts.inter(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColorBlue,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
