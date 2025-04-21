import 'package:achiiv/auth/login_screen.dart';
import 'package:achiiv/common/progress_action.dart';
import 'package:achiiv/dashboard/dashboard_shell.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:textwrap/textwrap.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        actions: [],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          // child: Column(
          //   spacing: 18,
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Text(
          //       fill('Hi, nice to meet you.', width: 15),
          //       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          //     ),
          //     Text(
          //       'Enter your email to get started.',
          //       style: TextStyle(fontSize: 14),
          //     ),
          //     TextField(
          //       keyboardType: TextInputType.emailAddress,
          //       decoration: InputDecoration(
          //         hintText: 'Email Address',
          //         hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
          //         filled: true,
          //         fillColor: Colors.grey[200], // Grey background when inactive
          //         enabledBorder: OutlineInputBorder(
          //           borderSide: BorderSide(
          //               color: Colors.transparent), // No border when inactive
          //           borderRadius: BorderRadius.circular(6),
          //         ),
          //         focusedBorder: OutlineInputBorder(
          //           borderSide: BorderSide(
          //               color: const Color.fromARGB(255, 37, 48, 98),
          //               width: 1), // Blue border when active
          //           borderRadius: BorderRadius.circular(8),
          //         ),
          //       ),
          //       cursorColor: Colors.red, // Optional: Blue cursor color
          //     ),
          //     Align(
          //       alignment: Alignment.centerRight,
          //       child: Text(
          //         "I have a confirmation code",
          //         textAlign: TextAlign.end,
          //         style: TextStyle(
          //           color: const Color.fromARGB(255, 37, 48, 98),
          //           fontSize: 12,
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       width: double.infinity,
          //       height: 40,
          //       child: FilledButton(
          //         onPressed: () {
          //           // Handle login button press
          //         },
          //         style: FilledButton.styleFrom(
          //           backgroundColor: const Color.fromARGB(255, 37, 48, 98),
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(6),
          //           ),
          //         ),
          //         child: Text(
          //           'Continue',
          //           style: TextStyle(fontSize: 14),
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       width: double.infinity,
          //       child: TextButton(
          //         onPressed: () {
          //           Navigator.push(context,
          //               MaterialPageRoute(builder: (context) {
          //             return LoginScreen();
          //           }));
          //         },
          //         child: Text(
          //           'Already have an account? Log in',
          //           textAlign: TextAlign.center,
          //           style: TextStyle(color: Colors.black, fontSize: 12),
          //         ),
          //       ),
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Divider(
          //           color: Colors.grey,
          //           height: 1,
          //           thickness: 1,
          //         ),
          //         Text(
          //           'OR',
          //           style: TextStyle(color: Colors.black),
          //         ),
          //         Divider(
          //           color: Colors.black,
          //           height: 5,
          //           thickness: 2,
          //         ),
          //       ],
          //     ),
          //     Align(
          //       alignment: Alignment.center,
          //       child: Text(
          //         'CONTINUE WITH',
          //         textAlign: TextAlign.center,
          //         style: TextStyle(color: Colors.black),
          //       ),
          //     ),
          //     SizedBox(
          //       width: double.infinity,
          //       child: FilledButton(
          //         onPressed: () {
          //           // Handle login button press
          //         },
          //         style: FilledButton.styleFrom(
          //           backgroundColor: Colors.grey[200],
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(6),
          //           ),
          //         ),
          //         child: Text(
          //           'Continue with ESS',
          //           style: TextStyle(fontSize: 14, color: Colors.black),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          child: _buildSignUp2(context),
        ),
      ),
    );
  }
}

Widget _buildSignUp2(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: 16,
    children: [
      Text(
        fill('Tell us about yourself.', width: 20),
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hintText: 'First Name',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
          filled: true,
          fillColor: Colors.grey[100], // Grey background when inactive
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
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hintText: 'Surname',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
          filled: true,
          fillColor: Colors.grey[100], // Grey background when inactive
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
      InternationalPhoneNumberInput(
        maxLength: 10,
        onInputChanged: (value) {
          print(value);
        },
        initialValue: PhoneNumber(isoCode: 'GH', phoneNumber:'0206438174'),
        selectorConfig: SelectorConfig(
            useBottomSheetSafeArea: true,
            selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
        ignoreBlank: false,
        selectorTextStyle: TextStyle(
          color: const Color.fromARGB(255, 37, 48, 98),
        ),
        keyboardType: TextInputType.numberWithOptions(),
        formatInput: true,
        inputDecoration: InputDecoration(
          hintText: '0206438174',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
          filled: true,
          fillColor: Colors.grey[100], // Grey background when inactive
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
      ),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
          filled: true,
          fillColor: Colors.grey[100], // Grey background when inactive
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
      Text(
        'Your password should be at least 8 characters long. For extra security, you should include at least a number and a special character.',
        style: TextStyle(
          color: const Color.fromARGB(255, 37, 48, 98),
        ),
      ),
      SizedBox(
        width: double.infinity,
        child: FilledButton(
          onPressed: () {
            // Handle login button press
            Navigator.push(context,
                MaterialPageRoute(builder: (context) {
              return DashboardShell();
            }));
          },
          style: FilledButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 37, 48, 98),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: Text(
            'Sign up',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
      ),
    ],
  );
}
