List<ServicesUnitModel> servicesUnitData = [
    ServicesUnitModel(
      imageURL: "assets/images/services/1.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "Preparation"
    ),
    ServicesUnitModel(
      imageURL: "assets/images/services/2.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "Worksheets"
    ),
    ServicesUnitModel(
      imageURL: "assets/images/services/3.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "Playing outside"
    ),
    ServicesUnitModel(
      imageURL: "assets/images/services/4.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "learning resources"
    ),
    ServicesUnitModel(
      imageURL: "assets/images/services/5.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "last meeting"
    ),
    ServicesUnitModel(
      imageURL: "assets/images/services/6.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "Testimonials & letters"
    ), 
]; 

class ServicesUnitModel {
    final String title;
    final String imageURL;
    final String link;
    ServicesUnitModel({required this.imageURL,required this.link,required this.title});
}