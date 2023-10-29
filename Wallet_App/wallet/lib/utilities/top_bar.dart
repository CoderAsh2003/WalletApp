import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet/utilities/plus_button.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 17),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Text('My',
                  style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.w700, fontSize: 40)),
              Text(' Cards',
                  style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.w300, fontSize: 40)),
            ],
          ),
          //Plus Button
          const PlusButton(),
        ]));
  }
}
