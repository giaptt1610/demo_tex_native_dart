import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MeasureSize extends SingleChildRenderObjectWidget {
  final ValueChanged<Size?> onChange;

  const MeasureSize({
    super.key,
    required this.onChange,
    required Widget child,
  }) : super(child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _MeasureSizeRenderObject(onChange);
  }
}

class _MeasureSizeRenderObject extends RenderProxyBox {
  final ValueChanged<Size?> onChange;

  Size? oldSize;

  _MeasureSizeRenderObject(this.onChange);

  @override
  void performLayout() {
    super.performLayout();

    if (size != oldSize) {
      oldSize = size;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        onChange(size);
      });
    }
  }
}
