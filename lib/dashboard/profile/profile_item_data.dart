import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileItemData {
  final String sectionTitle;
  final String title;
  final Widget icon;
  final PageRoute? route;

  ProfileItemData(
      {required this.sectionTitle,
      required this.title,
      required this.icon,
      this.route});
}

final List<ProfileItemData> profileItems = [
  ProfileItemData(
    sectionTitle: "Ssttings",
    title: "Security Settings",
    icon: SvgPicture.asset(
      'images/settings.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
  ProfileItemData(
    sectionTitle: "Personal",
    title: "Profile Information",
    icon:SvgPicture.asset(
      'images/settings.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
  ProfileItemData(
    sectionTitle: "Personal",
    title: "KYC Information",
    icon: SvgPicture.asset(
      'images/draws.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
  ProfileItemData(
    sectionTitle: "Personal",
    title: "My Documents",
    icon: SvgPicture.asset(
      'images/draws.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
  ProfileItemData(
    sectionTitle: "Personal",
    title: "Automated Topups",
    icon: SvgPicture.asset(
      'images/clock.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
  ProfileItemData(
    sectionTitle: "Account",
    title: "View Wallets",
    icon: SvgPicture.asset(
      'images/wallet.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
  ProfileItemData(
    sectionTitle: "Account",
    title: "Contact Information",
    icon: SvgPicture.asset(
      'images/mobile.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
  ProfileItemData(
    sectionTitle: "Support",
    title: "FAQ",
    icon: SvgPicture.asset(
      'images/docs.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
  ProfileItemData(
    sectionTitle: "Support",
    title: "Contact Support",
    icon: SvgPicture.asset(
      'images/chat.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
  ProfileItemData(
    sectionTitle: "Legal",
    title: "License and Regulatory Documents",
    icon: SvgPicture.asset(
      'images/docs.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
  ProfileItemData(
    sectionTitle: "Legal",
    title: "Terms and Conditions",
    icon: SvgPicture.asset(
      'images/globe.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
  ProfileItemData(
    sectionTitle: "Legal",
    title: "Privacy Policy",
    icon: SvgPicture.asset(
      'images/globe.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
  ProfileItemData(
    sectionTitle: "Feedback",
    title: "Check for Updates",
    icon: SvgPicture.asset(
      'images/update.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
  ProfileItemData(
    sectionTitle: "Feedback",
    title: "Rate App",
    icon: SvgPicture.asset(
      'images/hearth.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
  ProfileItemData(
    sectionTitle: "Manage",
    title: "Manage Account",
    icon: SvgPicture.asset(
      'images/profile.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
  ProfileItemData(
    sectionTitle: "Manage",
    title: "Logout",
    icon: SvgPicture.asset(
      'images/exit-right.svg',
      semanticsLabel: "Settings Icon",
      height: 24,
      width: 24,
    ),
  ),
];
