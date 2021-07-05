import 'package:kindergarten/models/tab_model.dart';
import 'package:url_launcher/url_launcher.dart';

List<TabModel> lettersData = [
    TabModel(
      imageURL: "assets/images/certificates/letters/1.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Letter title"
    ),
    TabModel(
      imageURL: "assets/images/certificates/letters/2.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Letter title"
    ), 
 
];  