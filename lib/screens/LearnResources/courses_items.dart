import 'package:kindergarten/models/tab_model.dart';
import 'package:url_launcher/url_launcher.dart';

List<TabModel> coursesData = [
    TabModel(
      imageURL: "assets/images/resources/courses/1.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Robot EV3"
    ),
    TabModel(
      imageURL: "assets/images/resources/courses/2.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Scratch  programming "
    ), 
    TabModel(
      imageURL: "assets/images/resources/courses/3.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Apps Programming"
    ), 
];  