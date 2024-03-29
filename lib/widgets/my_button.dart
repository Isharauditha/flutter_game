import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color foregroundColor;
  final VoidCallback onpressed;

  const MyButton({
    super.key,
    required this.text,
    required this.onpressed,
    required this.color,
    required this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        elevation: 5,

      ),
      child: Text(text, style: const TextStyle(fontSize: 16),),
    );
  }
}
