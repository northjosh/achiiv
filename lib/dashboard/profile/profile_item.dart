import 'package:achiiv/dashboard/profile/profile_item_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileItem extends StatelessWidget {
  final ProfileItemData data;
  final VoidCallback? onTap;
  final bool last;

  const ProfileItem(
      {super.key, required this.data, this.onTap, this.last = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          leading: data.icon,
          title: Text(
            data.title,
            style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal),
          ),
          trailing: SvgPicture.asset('images/chevron-right.svg',
              semanticsLabel: 'Arrow Right Icon',
              ),
          onTap: onTap,
        ),
        if (last)
          Positioned(
            left: 56, // Adjust this value to align with the text start
            right: 20,
            bottom: 0,
            child: Container(
              height: 1,
              color: Colors.grey[300],
            ),
          ),
      ],
    );
  }
}
