import 'package:kindergarten/models/tab_model.dart';
import 'package:url_launcher/url_launcher.dart';

List<TabModel> usefulApps = [
    TabModel(
      imageURL: "assets/images/apps/1.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Asafir App"
    ),
    TabModel(
      imageURL: "assets/images/apps/2.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Adnan App"
    ), 
    TabModel(
      imageURL: "assets/images/apps/3.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Blockly App"
    ), 
];  