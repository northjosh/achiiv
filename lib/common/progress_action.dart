import 'package:flutter/material.dart';

class ProgressActionBar extends StatefulWidget {
  final int currentPage;

  const ProgressActionBar({super.key, required this.currentPage});


  @override
  State<ProgressActionBar> createState() => _ProgressActionBarState();
}

class _ProgressActionBarState extends State<ProgressActionBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(5),
      ),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: widget.currentPage / 4, // 4 increments
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}