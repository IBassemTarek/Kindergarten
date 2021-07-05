import 'package:kindergarten/models/tab_model.dart';
import 'package:url_launcher/url_launcher.dart';

List<TabModel> subEducationUnitData = [
    TabModel(
      imageURL: "assets/images/sub-education/1.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Family coexistence corner"
    ),
    TabModel(
      imageURL: "assets/images/sub-education/2.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Art corner"
    ),
    TabModel(
      imageURL: "assets/images/sub-education/3.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Library corner"
    ), 
 
];  