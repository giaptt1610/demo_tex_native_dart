import 'package:demo_tex_native/core/theme/theme.dart';
import 'package:flutter/material.dart';

class PlanTrueFalseButton extends StatefulWidget {
  final bool? isCorrect;
  final bool isTrue;
  const PlanTrueFalseButton({required this.isCorrect, required this.isTrue, super.key});

  @override
  PlanTrueFalseButtonState createState() => PlanTrueFalseButtonState();
}

class PlanTrueFalseButtonState extends State<PlanTrueFalseButton> {
  double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 34.0,
        minWidth: 34.0,
      ),
      decoration: BoxDecoration(),
      alignment: Alignment.center,
      height: height,
      child: _icon(),
    );
  }

  Widget _icon() {
    if (widget.isTrue) {
      return widget.isCorrect == true
          ? const Icon(
              Icons.check,
              size: 18,
              color: AppColors.green500,
            )
          : const SizedBox.shrink();
    } else {
      return widget.isCorrect == false
          ? const Icon(
              Icons.check,
              size: 18,
              color: AppColors.red600,
            )
          : const SizedBox.shrink();
    }
  }

  void setHeight(double newHeight) {
    setState(() {
      height = newHeight;
    });
  }
}
