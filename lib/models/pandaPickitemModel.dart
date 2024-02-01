class PandaPickItemModel {
  String name;
  String remainingTime;
  String deliveryPrice;
  String image;
  String rating;
  String totalRating;
  String subTitle;

// Constructor
  PandaPickItemModel(
      {required this.name,
      required this.remainingTime,
      required this.deliveryPrice,
      required this.image,
      required this.rating,
      required this.totalRating,
      required this.subTitle});
}

class PandaPickHelper {
  static var statusList = [
    PandaPickItemModel(
        name: 'Kolkata toun Pizza',
        remainingTime: '25 min',
        deliveryPrice: '90',
        image: 'assets/pizza.jpg',
        rating: '4.5',
        totalRating: '1.2k',
        subTitle: 'New York'),
    PandaPickItemModel(
        name: 'Burger Lab',
        remainingTime: '30 min',
        deliveryPrice: '60',
        image: 'assets/burger.jpg',
        rating: '4.2',
        totalRating: '5.2k',
        subTitle: 'Kolkata'),
    PandaPickItemModel(
        name: 'Jans Delights',
        remainingTime: '45 min',
        deliveryPrice: '190',
        image: 'assets/noddels.jpg',
        rating: '3.5',
        totalRating: '2.2k',
        subTitle: 'America'),
  ];
  static PandaPickItemModel getStatusItem(int position) {
    return statusList[position];
  }

  static var itemCount = statusList.length;
}
