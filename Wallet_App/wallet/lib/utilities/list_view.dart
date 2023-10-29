import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Statistics
            Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 10, spreadRadius: 3, color: Colors.grey)
                  ]),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(25),
                      child: Image.asset('lib/icons/analytics.png')),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 25, right: 80),
                        child: Text('Statistics',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 25),
                        child: Text('Payments and Income',
                            style: GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                  const SizedBox(width: 25),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ),
            const SizedBox(height: 15),
            //Transaction
            Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                  boxShadow: const [
                    BoxShadow(blurRadius: 7, color: Colors.grey)
                  ]),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(25),
                      child: Image.asset('lib/icons/card-payment.png')),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 25),
                        child: Text(
                          'Transactions',
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Text(
                          'Transaction History',
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 52),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(Icons.arrow_forward_ios)),
                ],
              ),
            )
          ],
        ));
  }
}
