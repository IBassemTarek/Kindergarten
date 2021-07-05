import 'package:kindergarten/models/tab_model.dart';
import 'package:url_launcher/url_launcher.dart';

List<TabModel> aidsUnitData = [
    TabModel(
      imageURL: "assets/images/aids/1.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Preparing classes"
    ),
    TabModel(
      imageURL: "assets/images/aids/2.png",
      function: ({required String link}) async {
      await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      title: "Various means"
    ), 
]; 
