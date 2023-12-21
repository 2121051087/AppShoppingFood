import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import 'app_colors.dart';

class QuickFilterButton extends StatelessWidget {
  final String text;
  final String vector;
  final Color? buttonColor;
  final Color? textColor;

  const QuickFilterButton({
    super.key,
    required this.text,
    required this.vector,
    this.buttonColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final buttonColor = this.buttonColor ?? AppColors.whiteColor;
    final textColor = this.textColor ?? AppColors.textPrimaryColor;

    // Choose a contrasting text color based on button color (optional)
    final contrastingTextColor = textColor.computeLuminance() > 0.5
        ? AppColors.whiteColor
        : textColor;

    return Container(
      margin: EdgeInsets.only(left: 20, bottom: 10),
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: buttonColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(4, 4),
            blurRadius: 0.3,
            spreadRadius: 0.2,
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(vector),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(
                color: contrastingTextColor, // Use contrasting color
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
