import '../utl/assets.dart';

class NearestRestModel {
  final String image;
  final String title;
  final String subTitle;

  NearestRestModel(
      {required this.image, required this.title, required this.subTitle});

  static List<NearestRestModel> restaurants = [
    NearestRestModel(
        image: Assets.veganResto, title: "Vegan Resto", subTitle: "12 Mins"),
    NearestRestModel(
        image: Assets.healthyFood, title: 'Healthy Food', subTitle: "8 Mins"),
    NearestRestModel(
        image: Assets.restaurantPhoto3,
        title: 'Good Food',
        subTitle: "12 Mins"),
    NearestRestModel(
        image: Assets.restaurantPhoto4,
        title: 'Smart Resto',
        subTitle: "8 Mins"),
    NearestRestModel(
        image: Assets.restaurantPhoto4,
        title: 'Smart Resto',
        subTitle: "8 Mins"),
    NearestRestModel(
        image: Assets.restaurantPhoto4,
        title: 'Smart Resto',
        subTitle: "8 Mins"),
    NearestRestModel(
        image: Assets.restaurantPhoto4,
        title: 'Smart Resto',
        subTitle: "8 Mins"),
  ];
}
