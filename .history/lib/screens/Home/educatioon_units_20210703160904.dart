List<EducationUnitModel> educationUnitData = [
    EducationUnitModel(
      imageURL: "assets/images/education/1.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "Welcome Section"
    ),
    EducationUnitModel(
      imageURL: "assets/images/education/2.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "Friends section"
    ),
    EducationUnitModel(
      imageURL: "assets/images/education/3.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "Family section"
    ),
    EducationUnitModel(
      imageURL: "assets/images/education/4.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "Hands section"
    ),
    EducationUnitModel(
      imageURL: "assets/images/education/5.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "Kids clothes section"
    ),
    EducationUnitModel(
      imageURL: "assets/images/education/6.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "Kids book"
    ),
    EducationUnitModel(
      imageURL: "assets/images/education/7.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "National section"
    ),
    EducationUnitModel(
      imageURL: "assets/images/education/8.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "Food secion"
    ),
    EducationUnitModel(
      imageURL: "assets/images/education/9.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "health & safety"
    ),
    EducationUnitModel(
      imageURL: "assets/images/education/10.png",
      link: "http://www.africau.edu/images/default/sample.pdf",
      title: "Water section"
    ), 
]; 

class EducationUnitModel {
    final String title;
    final String imageURL;
    final String link;
    EducationUnitModel({required this.imageURL,required this.link,required this.title});
}