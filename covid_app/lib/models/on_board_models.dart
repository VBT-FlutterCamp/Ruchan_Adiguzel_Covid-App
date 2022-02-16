class OnBoardModel {
  String title;
  String description;
  String imagePath;
  OnBoardModel({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

List<OnBoardModel> models = [
  OnBoardModel(
      title: "Symptoms of Covid-19",
      description:
          "COVID-19 affects different people in different ways. Most infected people will develop mild to moderate illness",
      imagePath: "assets/images/img_1.png"),
  OnBoardModel(
      title: "Covid-19 Information",
      description:
          "Most people who fall sick with COVID-19 will experience mild to moderate",
      imagePath: "assets/images/img_2.png"),
  OnBoardModel(
      title: "Just Stay at Home",
      description:
          "Stay at home to self quarantine ourself from Covid-19, hopefully everything gonna be fine soon",
      imagePath: "assets/images/img_3.png")
];
