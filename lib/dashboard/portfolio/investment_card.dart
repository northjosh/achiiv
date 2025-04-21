import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:textwrap/textwrap.dart';

class InvestmentCard extends StatelessWidget {
  const InvestmentCard({super.key, this.hideBalance = false});

  final bool hideBalance;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            transform: GradientRotation(18.1),
            stops: [0.3, 0.301, 0.40, 0.401, 0.5, 0.501],
            colors: [
              Color.fromRGBO(70, 154, 200, 1),
              Color.fromRGBO(78, 162, 204, 1),
              Color.fromRGBO(78, 162, 204, 1),
              Color.fromRGBO(87, 169, 208, 1),
              Color.fromRGBO(87, 169, 208, 1),
              Color.fromRGBO(97, 175, 212, 1),
            
              // Colors.red,
              // Colors.blue,
              // Colors.blue,
              // Colors.green,
              // Colors.green,
              // Colors.black
            ],
          ),
        ),
        child: Stack(
          children: [
            // Add your child widgets here
            Positioned(
              top: 24,
              left: 24,
              child: Text(
                fill('Total Flexible Investment Balance', width: 20),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 24,
              child: !hideBalance ? Text(
                NumberFormat.currency(
                  locale: 'en_GH',
                  symbol: "GHS ",
                  decimalDigits: 2,
                ).format(9584.78),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ): Text("*** ***", 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}