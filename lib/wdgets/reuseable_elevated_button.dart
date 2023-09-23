import 'package:flutter/material.dart';
class ReuseableElevatedButton extends StatelessWidget {

  const ReuseableElevatedButton({
    super.key, required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:Colors.greenAccent.shade700,
        ),
        onPressed: onTap,
        child: const Icon(
          Icons.arrow_circle_right_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
