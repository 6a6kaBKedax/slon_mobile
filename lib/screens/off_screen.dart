import 'package:flutter/material.dart';
import 'package:test_project/gen/assets.gen.dart';
import 'package:test_project/screens/on_screen/ads_block_card.dart';
import 'package:test_project/src/colors.dart';
import 'package:test_project/widgets/app_bar.dart';

class OffScreen extends StatelessWidget {
  const OffScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox.expand(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Assets.gradient.svg(),
            Positioned(
              bottom: 200.0,
              child: GestureDetector(
                onTap: () {},
                child: Assets.buttons.connectButton2.svg(),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: CustomAppBar(
                  onTapSettings: () {},
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: AdsBlockCard(
                    onTap: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
