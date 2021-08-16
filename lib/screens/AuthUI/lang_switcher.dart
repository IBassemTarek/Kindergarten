import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

import '../../settings.dart';

class LangSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (Locales?.currentLocale(context).toString() == "en")
          LocaleNotifier.of(context)?.change("ar");
        else
          LocaleNotifier.of(context)?.change("en");
      },
      child: Row(
        children: [
          Image.asset(
            Locales?.currentLocale(context).toString() == "ar"
                ? "assets/images/flags/EN.png"
                : "assets/images/flags/AR.png",
            height: 20,
            width: 20,
          ),
          SizedBox(
            width: 15,
          ),
          LocaleText(
            "lang",
            style: Theme.of(context)
                .textTheme
                .headline2
                ?.copyWith(color: kColor1, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
