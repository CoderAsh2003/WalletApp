// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:wallet/utilities/card.dart';
import 'package:wallet/utilities/icon_row.dart';
import 'package:wallet/utilities/list_view.dart';
import 'package:wallet/utilities/top_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AppBodyWithAppBar extends StatelessWidget {
  final _controller = PageController();
  AppBodyWithAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //My Cards Text in the app bar
        const TopBar(),
        const SizedBox(height: 5),
        //Card Views
        Container(
          height: 200,
          child: PageView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            children: const [
              CardView(
                balance: 5250.20,
                cardNumber: '8250 3286',
                expiryMonth: 10,
                expiryYear: 04,
                colors: Color.fromARGB(255, 156, 151, 151),
                pathToCard: 'lib/icons/jcb.png',
              ),
              CardView(
                balance: 15040.60,
                cardNumber: '7864 3286',
                expiryMonth: 01,
                expiryYear: 24,
                colors: Colors.blue,
                pathToCard: 'lib/icons/express.png',
              ),
              CardView(
                balance: 25576.90,
                cardNumber: '3245 3286',
                expiryMonth: 08,
                expiryYear: 30,
                colors: Colors.black,
                pathToCard: 'lib/icons/mastercard.png',
              ),
              CardView(
                balance: 100900.10,
                cardNumber: '9867 3286',
                expiryMonth: 03,
                expiryYear: 25,
                colors: Colors.teal,
                pathToCard: 'lib/icons/VISA.png',
              )
            ],
          ),
        ),
        const SizedBox(height: 15),
        SmoothPageIndicator(
          controller: _controller,
          count: 4,
          effect: const ExpandingDotsEffect(activeDotColor: Colors.black),
        ),
        const SizedBox(height: 25),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconRow(iconPath: 'lib/icons/share.png', iconText: 'Send'),
              IconRow(iconPath: 'lib/icons/pay_button.png', iconText: 'Pay'),
              IconRow(iconPath: 'lib/icons/bills.png', iconText: 'Bills'),
            ],
          ),
        ),
        const SizedBox(height: 15),
        MyListView(),
      ],
    );
  }
}
