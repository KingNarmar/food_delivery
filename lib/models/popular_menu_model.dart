class PopularMenuModel {
  final String leading;
  final String title;
  final String subTitle;
  final String trailing;

  static List<PopularMenuModel> popularList = [
    PopularMenuModel(
        leading: "assets/images/MenuPhoto1.png",
        title: "Herbal Pancake",
        subTitle: 'Warung Herbal',
        trailing: '\$7'),
    PopularMenuModel(
        leading: "assets/images/PhotoMenu2.png",
        title: 'Fruit Salad',
        subTitle: 'Wijie Resto',
        trailing: '\$5'),
    PopularMenuModel(
        leading: "assets/images/PhotoMenu3.png",
        title: 'Green Noddle',
        subTitle: 'Noodle Home',
        trailing: '\$15'),
  ];

  PopularMenuModel(
      {required this.leading,
      required this.title,
      required this.subTitle,
      required this.trailing});
}
