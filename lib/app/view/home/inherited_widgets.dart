import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SpecialColor extends InheritedWidget {
  const SpecialColor({
    Key? key,
    required this.color,
    required Widget child,
  }) : super(key: key, child: child);

  final Color color;

  static SpecialColor of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<SpecialColor>();
    if (result == null) throw Exception('Special color not found');
    return result;
  }

  @override
  bool updateShouldNotify(SpecialColor oldWidgetd) {
    return oldWidgetd.color != color;
  }
}
