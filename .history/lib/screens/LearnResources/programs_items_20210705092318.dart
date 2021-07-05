import 'package:kindergarten/models/tab_model.dart';
import 'package:url_launcher/url_launcher.dart';

List<TabModel> programsData = [
    TabModel(
      imageURL: "assets/images/resources/programs/1.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Science Club"
    ),
    TabModel(
      imageURL: "assets/images/resources/programs/2.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Cartoons and stories"
    ), 
    TabModel(
      imageURL: "assets/images/resources/programs/3.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Storyteller"
    ), 
];  