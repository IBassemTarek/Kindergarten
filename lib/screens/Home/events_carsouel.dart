import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:kindergarten/models/events_model.dart';
import 'package:kindergarten/screens/pdf/pdf_screen.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../settings.dart';

class EventsCarsouel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final events = Provider.of<List<EventsModel>>(context);
    // Align(
    //   alignment: Locales.currentLocale(context).toString() == "en" ?Alignment.topRight:Alignment.topLeft,
    //   child: Image.asset(Locales.currentLocale(context).toString() == "en" ?"assets/images/home/home-2.png":"assets/images/home/home-2A.png")),

    return Wrap(
      runSpacing: 0.0279 * _height,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.0507 * _width),
          child: LocaleText(
            'News',
            style: Locales?.currentLocale(context).toString() == "ar"
                ? Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(color: kColor6)
                : Theme.of(context).textTheme.headline3,
          ),
        ),
        events.isEmpty
            ? Center(child: CircularProgressIndicator())
            : CarouselSlider.builder(
                itemCount: events.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Container(
                    height: 0.22098 * _height,
                    width: 0.71739 * _width,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      placeholder: (context, url) => Center(
                        child: SizedBox(
                            width: 30,
                            height: 30,
                            child: CircularProgressIndicator()),
                      ),
                      imageUrl: driveURLTransfer(events[itemIndex].urlImage),
                      errorWidget: (___, _, __) {
                        return Container(
                          child: Image.asset('assets/images/No-Image.png',
                              fit: BoxFit.cover),
                        );
                      },
                    ),
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  aspectRatio: 2.0,
                  initialPage: 2,
                ),
              ),
      ],
    );
  }
}
