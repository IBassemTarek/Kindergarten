import 'package:kindergarten/models/tab_model.dart';
import 'package:url_launcher/url_launcher.dart';

List<TabModel> worksheetsData = [
    TabModel(
      imageURL: "assets/images/worksheets/1.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "English alphabet"
    ),
    TabModel(
      imageURL: "assets/images/worksheets/2.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Arabic alphabet"
    ),
    TabModel(
      imageURL: "assets/images/worksheets/3.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "English Numbers"
    ), 
 
];  