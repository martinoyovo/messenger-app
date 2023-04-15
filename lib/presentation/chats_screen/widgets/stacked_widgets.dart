import 'package:flutter/material.dart';
import 'package:messenger_app/core/app_export.dart';

class StackedWidgets extends StatelessWidget {
  final List<String>? items;
  final TextDirection direction;
  final double size;
  final double xShift;

  const StackedWidgets({
    Key? key,
    this.items,
    this.direction = TextDirection.ltr,
    this.size = 32,
    this.xShift = 6,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allItems = items!
        .map((urlImage) => buildImage(urlImage))
        .toList()
        .asMap()
        .map((index, item) {
          final left = size - xShift;

          final value = Container(
            width: getSize(size),
            height: getSize(size),
            margin: EdgeInsets.only(left: left * index),
            child: item,
          );

          return MapEntry(index, value);
        })
        .values
        .toList();

    return Stack(
      children: direction == TextDirection.ltr
          ? allItems.reversed.toList()
          : allItems,
    );
  }

  Widget buildImage(String urlImage) {
    const double borderSize = 1.5;

    return ClipOval(
      child: Container(
        padding: const EdgeInsets.all(borderSize),
        color: Colors.white,
        child: ClipOval(
          child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
