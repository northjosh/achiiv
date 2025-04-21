import 'dart:io';

import 'package:achiiv/auth/signup_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:textwrap/textwrap.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            Text(
              fill('Welcome back', width: 8),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Enter your email address and password to login.',
              style: TextStyle(fontSize: 14),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email Address',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                filled: true,
                fillColor: Colors.grey[200], // Grey background when inactive
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent), // No border when inactive
                  borderRadius: BorderRadius.circular(6),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 37, 48, 98),
                      width: 1), // Blue border when active
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              cursorColor: Colors.red, // Optional: Blue cursor color
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                filled: true,
                fillColor: Colors.grey[200], // Grey background when inactive
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent), // No border when inactive
                  borderRadius: BorderRadius.circular(6),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 37, 48, 98),
                      width: 1), // Blue border when active
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              cursorColor: Colors.red, // Optional: Blue cursor color
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // showBottomSheet(context: context, builder: builder)
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(16)),
                    ),
                    builder: (context) => Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                        left: 16,
                        right: 16,
                        top: 24,
                      ),
                      child: _forgotPassword(context),
                    ),
                  );
                },
                child: Text('I forgot my passassword',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 37, 48, 98),
                      fontSize: 12,
                    )),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: FilledButton(
                onPressed: () {
                  // Handle login button press
                },
                style: FilledButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 37, 48, 98),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }),
                );
              },
              child: Text(
                'New User? Create a new account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromARGB(255, 37, 48, 98),
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _forgotPassword(BuildContext context) {
  return SafeArea(
    child: SizedBox(
      height: 250,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close)),
          ),
          Text(
            'Enter your email address below',
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Email Address',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
              filled: false,
              fillColor: Colors.grey[200], // Grey background when inactive
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.transparent), // No border when inactive
                borderRadius: BorderRadius.circular(6),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: const Color.fromARGB(255, 37, 48, 98),
                    width: 1), // Blue border when active
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            cursorColor: const Color.fromARGB(255, 37, 48, 98),
            // Optional: Blue cursor color
          ),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: FilledButton(
              onPressed: () {
                // Handle login button press
              },
              style: FilledButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 37, 48, 98),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Text(
                'Send Reset Instructions',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
