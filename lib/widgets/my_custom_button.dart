import 'package:calculator_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MyCustomButton extends StatefulWidget {
  final String char;
  final Color backColor;
  final Color forColor;
  final double hight;
  final double width;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback onPressed;
  const MyCustomButton({
    super.key,
    required this.char,
    required this.backColor,
    required this.onPressed,
    required this.hight,
    required this.width,
    required this.fontSize,
    required this.fontWeight,
    required this.forColor,
  });

  @override
  State<MyCustomButton> createState() => _MyCustomButtonState();
}

class _MyCustomButtonState extends State<MyCustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 2,
        shadowColor: AppColors.white.withOpacity(0.4),
        padding: EdgeInsets.zero,
        fixedSize: Size(widget.width, widget.hight),
        backgroundColor: widget.backColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Center(
        child: Text(
          widget.char,
          style: TextStyle(
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,
            color: widget.forColor,
          ),
        ),
      ),
    );
  }
}
