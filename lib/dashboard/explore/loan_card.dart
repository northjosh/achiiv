import 'package:flutter/material.dart';
import 'package:textwrap/textwrap.dart';
import 'package:transparent_image/transparent_image.dart';

class LoanCard extends StatelessWidget {
  const LoanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.hardEdge,
      child: Stack(children: [
        Hero(
          tag: 1,
          child: FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: AssetImage('images/cedi2.jpg'),
            fit: BoxFit.cover,
            height: 220,
            width: double.infinity,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Container(
            color: const Color.fromARGB(194, 0, 0, 0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Text(
                    "Get a fast, affordable loan now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    fill(
                        "Times are hard. Safeguardour investment while having access to a loano handle our emergency.",
                        width: 50),
                    // textScaler: TextScaler.linear(2),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text('Request Callback',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
