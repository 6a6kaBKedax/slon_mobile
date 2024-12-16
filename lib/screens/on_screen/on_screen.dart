import 'package:flutter/material.dart';
import 'package:test_project/gen/assets.gen.dart';
import 'package:test_project/screens/on_screen/ads_block_card.dart';
import 'package:test_project/screens/on_screen/timer.dart';
import 'package:test_project/src/colors.dart';
import 'package:test_project/widgets/app_bar.dart';

class OnScreen extends StatelessWidget {
  const OnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox.expand(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              bottom: 320.0,
              child: Assets.gradient.svg(),
            ),
            Positioned(
              bottom: 300.0,
              child: Assets.waves.wave2.svg(),
            ),
            Positioned(
              bottom: 320.0,
              child: Assets.waves.wave4.svg(),
            ),
            Positioned(
              bottom: 200.0,
              child: Assets.waves.wave8.svg(),
            ),
            Positioned(
              bottom: 350.0,
              child: GestureDetector(
                onTap: () {},
                child: Assets.buttons.connectButton.svg(),
              ),
            ),
            Positioned(
              bottom: 140.0,
              child: Assets.waves.wave6.svg(),
            ),
            Positioned(
              bottom: 0.0,
              child: Assets.waves.wave7.svg(),
            ),
            const Positioned(
              top: 120.0,
              child: TimerView(),
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
                    blockAdsValue: 1234,
                    blockTrackValue: 3421,
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
