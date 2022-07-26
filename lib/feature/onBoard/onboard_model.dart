class OnBoardModel {
  final String title;
  final String subTitle;
  final String imgPath;

  OnBoardModel(this.title, this.subTitle, this.imgPath);
}

class OnBoardModels {
  static final List<OnBoardModel> onBoardItems = [
    OnBoardModel("Order Your Food", "Now you can order your food by our app",
        "assets/image/on_boarding_one.png"),
    OnBoardModel("Order Your Food", "Now you can order your food by our app",
        "assets/image/on_boarding_one.png"),
    OnBoardModel("Order Your Food", "Now you can order your food by our app",
        "assets/image/on_boarding_one.png"),
  ];
}
