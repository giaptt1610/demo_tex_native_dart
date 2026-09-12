import 'package:flutter/material.dart';

class SpinLoadingg extends StatelessWidget {
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const SpinLoadingg({this.color, this.padding, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(top: 40, bottom: 40),
      child: Center(
        child: SizedBox(
          height: 20.0,
          width: 20.0,
          child: CircularProgressIndicator(
            color: color ?? Colors.pink,
            strokeWidth: 2,
          ),
        ),
      ),
    );
  }
}
