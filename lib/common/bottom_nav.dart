import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {

  final List<BottomNavItem> items;
  final Color? backgroundColor;
  final Color? selectedItemColor;
  final int? fontSize;
  final int? iconSize;
  final ValueChanged<int> onTap;
  const BottomNav({super.key, required this.items, this.backgroundColor=Colors.white, this.selectedItemColor=const Color.fromARGB(255, 37, 48, 98), this.fontSize=16, this.iconSize=24, required this.onTap});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {


  @override
  Widget build(BuildContext context) {
    
    return  Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [],
      ),
    );
  }
}



class BottomNavItem {
  final String title;
  final Widget icon;
  final Widget page;

  BottomNavItem({
    required this.title,
    required this.icon,
    required this.page,
  });


Widget build(BuildContext context){
  return Column(
    children: [
      icon,
      Text(title)
    ],
  );
}
}