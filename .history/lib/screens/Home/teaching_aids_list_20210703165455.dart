List<AidsUnitModel> aidsUnitData = [
    AidsUnitModel(
      imageURL: "assets/images/services/1.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "Preparing classes"
    ),
    AidsUnitModel(
      imageURL: "assets/images/services/2.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "Various means"
    ), 
]; 

class AidsUnitModel {
    final String title;
    final String imageURL;
    final String link;
    AidsUnitModel({required this.imageURL,required this.link,required this.title});
}