import 'package:kindergarten/models/tab_model.dart';
import 'package:url_launcher/url_launcher.dart';

List<TabModel> videoData = [
    TabModel(
      imageURL: "assets/images/gallery/youtube/1.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Kids Playing in the garden"
    ),
    TabModel(
      imageURL: "assets/images/gallery/youtube/2.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Kids Playing in Park Games"
    ), 
 
];  