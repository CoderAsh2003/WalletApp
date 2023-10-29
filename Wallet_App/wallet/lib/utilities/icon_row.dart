import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconRow extends StatelessWidget {
  final iconPath;
  final String iconText;
  const IconRow({super.key, required this.iconPath, required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey.shade600,
                      spreadRadius: 3)
                ],
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15)),
            height: 60,
            child: Center(
                child: Image.asset(
                    iconPath)), //Path for each button mentioned here
          ),
          const SizedBox(height: 10),
          Text(iconText,
              style: GoogleFonts.montserrat(
                  fontSize: 20, fontWeight: FontWeight.w400)),
        ],
      )
    ]);
  }
}
