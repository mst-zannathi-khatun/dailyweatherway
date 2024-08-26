import 'package:flutter/material.dart';

class MoreElevatedButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const MoreElevatedButtonWidget({
    super.key, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffefcf0a),
      ),
      child: const Text(
        "More",
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
