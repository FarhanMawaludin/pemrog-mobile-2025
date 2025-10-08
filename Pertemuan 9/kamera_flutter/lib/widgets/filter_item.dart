import 'dart:io';
import 'package:flutter/material.dart';

@immutable
class FilterItem extends StatelessWidget {
  final String imagePath;
  final Color color;
  final VoidCallback? onFilterSelected;

  const FilterItem({
    super.key,
    required this.imagePath,
    required this.color,
    this.onFilterSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFilterSelected,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ClipOval(
            child: Image.file(
              File(imagePath),
              color: color.withOpacity(0.5),
              colorBlendMode: BlendMode.color,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
