import 'package:flutter/material.dart';

class DotDivider extends StatelessWidget {
  final double height;
  final double dotSpacing;
  final double dotSize;
  final Color color;

  const DotDivider({super.key,
    this.height = 1.0,
    this.dotSpacing = 4.0,
    this.dotSize = 2.0,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          (MediaQuery.of(context).size.width / (dotSize + dotSpacing)).floor(),
              (index) => Container(
            width: dotSize,
            height: dotSize,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
