import 'package:achiiv/dashboard/more/blog_card.dart';
import 'package:achiiv/dashboard/more/manage_work_card.dart';
import 'package:flutter/material.dart';

class  MoreScreen extends StatelessWidget {
  const MoreScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: const Column(
        children: [
          BlogCard(),
          ManageWorkCard()
        ],
      ),
    );
  }
}