import 'dart:math';

import 'package:achiiv/dashboard/profile/profile_item.dart';
import 'package:achiiv/dashboard/profile/profile_item_data.dart';
import 'package:achiiv/dashboard/profile/referral_card.dart';
import 'package:flutter/material.dart';

class ProfileScren extends StatelessWidget {
  const ProfileScren({super.key});

  @override
  Widget build(BuildContext context) {
    final sections = profileItems.map((e) => e.sectionTitle).toSet();

    return ListView(
      children: [
        ReferralCard(),
        const SizedBox(height: 14),
        ...sections.map(
          (e) {
            return Column(
              children: profileItems
                  .where((item) => item.sectionTitle == e)
                  .toList()
                  .asMap()
                  .entries
                  .map((entry) {
                final isLast = entry.key ==
                    profileItems
                            .where((item) => item.sectionTitle == e)
                            .length -
                        1;
                return ProfileItem(
                  data: entry.value,
                  last: isLast,
                  onTap: () {
                    // Handle tap action here
                  },
                );
              }).toList(),
            );
          },
        )
      ],
    );
  }
}
