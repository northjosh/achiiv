import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:textwrap/textwrap.dart';

class ColoredCard extends StatelessWidget {
  ColoredCard({super.key, required this.title, required this.subTitle, this.onButtonTap, required this.buttonText, this.backgroundColor, this.iconBackgroundColor});

  final String title;
  final String subTitle;
  final String buttonText;
  final Color? backgroundColor;
  final Color? iconBackgroundColor;
  final void Function()? onButtonTap;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color:backgroundColor ?? Color.fromRGBO(234, 249, 232, 1),
      ),
      child: Row(
        spacing: 18,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: iconBackgroundColor ?? Color.fromRGBO(174, 234, 166, 1),
            radius: 24,
            child: SvgPicture.asset(
              'images/hearth.svg',
              semanticsLabel: "Settings Icon",
              height: 24,
              width: 24,
              color: Colors.black,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                fill(
                   subTitle,
                  width: 43,
                ),
              ),
        
              FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: iconBackgroundColor ?? Color.fromRGBO(174, 234, 166, 1),
                  ),
                  child: Text(
                   buttonText,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
