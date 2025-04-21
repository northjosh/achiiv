import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';
import 'package:textwrap/textwrap.dart';

class ManageWorkCard extends StatelessWidget {
  const ManageWorkCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            // width: 70,
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(14)),
            child: Text(
              'NEW✨',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Manage Your Work',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          StyledText(
              text: fill(
                  'A complete toolkit for Managing your work. From viewing payslips to applying for leave and so much more.<link> Learn more</link>',
                  width: 50),
              style: TextStyle(fontSize: 14, color: Color.fromRGBO(131, 131, 131, 1)),
              tags: {
                'link':
                    StyledTextTag(style: TextStyle(color: Colors.purple[300]))
              }),
          const SizedBox(height: 14),
          const Text(
            'No Empoyer Connected Yet',
            style: TextStyle(fontSize: 14,),
          ),
          const SizedBox(height: 14),
          Column(
            children: [
              SizedBox(
                width: double.infinity,
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
                    'Connect to your employer',
                    style: TextStyle(fontSize: 14, color: Colors.white, ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    // Handle login button press
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: Text(
                    'Refer an emloyer',
                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
