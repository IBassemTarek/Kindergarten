List<SoonUnitModel> soonUnitData = [
    SoonUnitModel(
      imageURL: "assets/images/home/soon.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "Online school"
    ), 
]; 

class SoonUnitModel {
    final String title;
    final String imageURL;
    final String link;
    SoonUnitModel({required this.imageURL,required this.link,required this.title});
}