import 'package:achiiv/dashboard/explore/explore_screen.dart';
import 'package:flutter/material.dart';
import 'package:textwrap/textwrap.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ExploreScreen();
        }));
      },
      child: Container(
        height: 150,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(157, 131, 247, 1),
              Color.fromRGBO(247, 221, 244, 1),
            ],
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 12,
          children: [
            Image(
              image: AssetImage('images/explore.webp'),
              fit: BoxFit.cover,
              width: 120,
              height: 120,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  Text(
                    fill(
                      'Discover even more ways to build a financially-secured future',
                      width: 33,
                      maxLines: 2,
                    ),
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Discover >',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
