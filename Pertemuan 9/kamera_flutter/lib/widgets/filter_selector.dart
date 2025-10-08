import 'dart:io';
import 'package:flutter/material.dart';
import 'filter_item.dart';

@immutable
class FilterSelector extends StatelessWidget {
  final List<Color> filters;
  final ValueChanged<Color> onFilterChanged;
  final String imagePath;

  const FilterSelector({
    super.key,
    required this.filters,
    required this.onFilterChanged,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        itemBuilder: (context, index) {
          final color = filters[index];
          return FilterItem(
            imagePath: imagePath, // kirim path
            color: color,
            onFilterSelected: () => onFilterChanged(color),
          );
        },
      ),
    );
  }
}
