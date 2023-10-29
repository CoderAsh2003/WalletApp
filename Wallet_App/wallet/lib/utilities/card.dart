// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardView extends StatelessWidget {
  final double balance;
  final String cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final Color colors;
  final String pathToCard; // Global variable for card icon path

  const CardView({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.colors,
    required this.pathToCard, // Accept the path of the card icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colors,
        ),
        child: Stack(
          // Use a stack to overlay the card icon
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            'Balance',
                            style: GoogleFonts.ubuntu(
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '\$' + balance.toString(),
                            style: GoogleFonts.hind(
                              fontSize: 50,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(right: 80),
                                child: Text(
                                  cardNumber,
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 150),
                                child: Text(
                                  expiryMonth.toString() +
                                      '/' +
                                      expiryYear.toString(),
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              // Position the card icon in the top right
              top: 10,
              right: 10,
              child: Container(
                width: 80,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Image.asset(pathToCard), // Card icon
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
















// import 'package:flutter/material.dart';

// import 'package:google_fonts/google_fonts.dart';

// class CardView extends StatelessWidget {
//   final double balance;
//   final String cardNumber;
//   final int expiryMonth;
//   final int expiryYear;
//   final colors;
//   const CardView(
//       {super.key,
//       required this.balance,
//       required this.cardNumber,
//       required this.expiryMonth,
//       required this.expiryYear,
//       required this.colors});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 13),
//       child: Container(
//         width: 300,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: colors,
//         ),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const SizedBox(height: 10),
//                       Text(
//                         'Balance',
//                         style: GoogleFonts.ubuntu(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w200,
//                             color: Colors.white),
//                       ),
//                       const SizedBox(height: 10),
//                       Text(
//                         // ignore: prefer_interpolation_to_compose_strings
//                         '\$' + balance.toString(),
//                         style: GoogleFonts.hind(
//                             fontSize: 50,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.white),
//                       ),
//                       const SizedBox(height: 15),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             padding: const EdgeInsets.only(right: 80),
//                             child: Text(cardNumber,
//                                 style: GoogleFonts.ubuntu(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w100,
//                                     color: Colors.white)),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(left: 150),
//                             // ignore: prefer_interpolation_to_compose_strings
//                             child: Text(
//                                 // ignore: prefer_interpolation_to_compose_strings
//                                 expiryMonth.toString() +
//                                     '/' +
//                                     expiryYear.toString(),
//                                 style: GoogleFonts.ubuntu(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w100,
//                                     color: Colors.white)),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
