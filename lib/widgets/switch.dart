import 'package:flutter/cupertino.dart';
import 'package:test_project/src/colors.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    super.key,
    this.onChanged,
  });

  final Function(bool)? onChanged;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: isSwitched,
      onChanged: (bool value) {
        setState(() {
          isSwitched = value;
        });
        widget.onChanged?.call(value);
      },
      thumbColor: AppColors.textColorWhite,
      activeColor: AppColors.activeSwitchColor,
      offLabelColor: AppColors.background,
      trackColor: AppColors.offSwitchColor,
    );
  }
}
