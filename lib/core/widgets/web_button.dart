import 'package:flutter/material.dart';

class WebButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;

  const WebButton({required this.child, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: onTap != null ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: GestureDetector(
        onTap: onTap,
        child: child,
      ),
    );
  }
}
