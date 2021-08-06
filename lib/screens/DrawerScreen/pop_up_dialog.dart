import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kindergarten/screens/DrawerScreen/social_media_icon.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../settings.dart';

Widget buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: Center(
      child: LocaleText(
        'Contact Us',
        style: Locales?.currentLocale(context).toString() == "ar"
            ? Theme.of(context).textTheme.headline2?.copyWith(color: kColor6)
            : Theme.of(context).textTheme.headline3,
      ),
    ),
    content: Wrap(
      alignment: WrapAlignment.center,
      children: List.generate(
          socialMediaLinks.length,
          (index) => ContactListContent(
                socialMediaIcon: socialMediaLinks[index],
              )),
    ),
  );
}

class ContactListContent extends StatelessWidget {
  final SocialMediaIcon socialMediaIcon;
  ContactListContent({required this.socialMediaIcon});
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return InkWell(
        onTap: () async {
          await canLaunch(socialMediaIcon.url)
              ? await launch(socialMediaIcon.url)
              : throw 'Could not launch url';
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.015 * _width),
          child: SvgPicture.asset(
            socialMediaIcon.iconURL,
            height: 0.09 * _width,
            width: 0.09 * _width,
          ),
        ));
  }
}

final List<SocialMediaIcon> socialMediaLinks = [
  SocialMediaIcon(
    iconURL: "assets/images/socialIcons/phone-call.svg",
    url: "tel:+00966592207651",
  ),
  SocialMediaIcon(
      iconURL: "assets/images/socialIcons/instagram.svg",
      url:
          "https://www.instagram.com/kindergarten_world86/?utm_medium=copy_link"),
  SocialMediaIcon(
    iconURL: "assets/images/socialIcons/snapchat.svg",
    url: "https://story.snapchat.com/@zainabalsaggaf",
  ),
  SocialMediaIcon(
    iconURL: "assets/images/socialIcons/telegram.svg",
    url: "https://t.me/Zainab_Alsaggaf",
  ),
  SocialMediaIcon(
    iconURL: "assets/images/socialIcons/linkedin.svg",
    url:
        "https://www.linkedin.com/in/%D8%B2%D9%8A%D9%86%D8%A8-%D8%A7%D9%84%D8%B3%D9%82%D8%A7%D9%81-833373203/",
  ),
  SocialMediaIcon(
    iconURL: "assets/images/socialIcons/gmail.svg",
    url: "mailto:zalsaggaf86@gmail.com",
  ),
];
