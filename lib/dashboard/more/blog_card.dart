import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:textwrap/textwrap.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(240, 237, 253, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'images/blog.png', 
            width: 120,
            height: 80,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                 fill('Achieve U - The official Achieve  blog', width: 25),
                 style: TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 14.0),
                 child: SvgPicture.asset(
                  'images/arrow-up-right.svg',
                  semanticsLabel: 'Arrow Top Right Icon',
                               ),
               ),
            ],
          ),
          const SizedBox(height: 8),
           Text(
            fill('Access news articles, tipa and tricks from the Achieve team to help you become financially equipped.', width: 50),
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}