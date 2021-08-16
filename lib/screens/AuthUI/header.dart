import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

class Header extends StatelessWidget {
  final String title;
  final String subtitle;
  Header({required this.subtitle, required this.title});
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Align(
      alignment: Alignment.centerLeft,
      child: Wrap(
        direction: Axis.vertical,
        spacing: 0.0123 * _height,
        children: [
          LocaleText(
            title,
            style:
                Theme.of(context).textTheme.headline2?.copyWith(fontSize: 21),
          ),
          Container(
              width: 0.5676 * _width,
              child: LocaleText(subtitle,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(fontSize: 14)))
        ],
      ),
    );
  }
}
