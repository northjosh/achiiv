import 'package:achiiv/auth/login_screen.dart';
import 'package:achiiv/auth/signup_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:textwrap/textwrap.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  final List<String> images = [
    'images/achiiv1.jpeg',
    'images/achiiv1.jpeg',
    'images/achiiv1.jpeg',
  ];

  final List<String> texts = [
    'Take Charge of your finances with ease anywhere and anytime.',
    'Do more than ever before with Achieve.',
    'Unlock the Future. Be who you want to be.',
  ];

  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: double.infinity,
              viewportFraction: 1.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              enableInfiniteScroll: true,
            ),
            items: List.generate(images.length, (index) {
              return Builder(
                builder: (BuildContext context) {
                  return Stack(
                    children: [
                      Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black,
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 180,
                        left: 10,
                        right: 20,
                        child: Text(
                          texts[index],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            }).toList(),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: _buildButton(context),
          ),
        ],
      ),
    );
  }
}

Widget _buildButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Text('Create a new account',
                  style: TextStyle(fontSize: 18, color: Colors.black)),
            ),
          ),
        ),
        Center(
          child: SizedBox(
            width: double.infinity,
            child: TextButton(
             onPressed: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );
             },
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Text(
                'Log In',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
