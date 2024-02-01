import 'package:flutter/material.dart';
import 'package:food_app/components/restaurants.dart';
import 'package:food_app/constats/constants.dart';
import 'package:food_app/models/pandaPickitemModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          title: Text(
            'Kolkata City',
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(45),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[Colors.redAccent, Colors.orangeAccent]),
                    borderRadius: BorderRadius.circular(50)),
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search for any Items',
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.search,
                        color: Color(0xff7b7b7b),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.shopping_bag_outlined),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Panda Pick',
                      style: TextStyle(
                          color: Color(0xff323232),
                          fontSize: 15,
                          fontFamily: Bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .278,
                    // color: Colors.orange,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: PandaPickHelper.itemCount,
                        itemBuilder: (context, index) {
                          PandaPickItemModel model =
                              PandaPickHelper.getStatusItem(index);
                          return RestaurantsScreen(
                              name: model.name,
                              remainingTime: model.remainingTime,
                              image: model.image,
                              subTitle: model.subTitle,
                              rating: model.rating,
                              totalRating: model.totalRating,
                              deliveryPrice: model.deliveryPrice,
                              deliveryTime: model.remainingTime);
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Panda exclusives',
                      style: TextStyle(
                          color: Color(0xff323232),
                          fontSize: 15,
                          fontFamily: Bold)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .278,
                      // color: Colors.orange,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: PandaPickHelper.itemCount,
                          itemBuilder: (context, index) {
                            PandaPickItemModel model =
                                PandaPickHelper.getStatusItem(index);
                            return RestaurantsScreen(
                                name: model.name,
                                remainingTime: model.remainingTime,
                                image: model.image,
                                subTitle: model.subTitle,
                                rating: model.rating,
                                totalRating: model.totalRating,
                                deliveryPrice: model.deliveryPrice,
                                deliveryTime: model.remainingTime);
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Burning Brownies',
                      style: TextStyle(
                          color: Color(0xff323232),
                          fontSize: 15,
                          fontFamily: Bold)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .278,
                      // color: Colors.orange,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: PandaPickHelper.itemCount,
                          itemBuilder: (context, index) {
                            PandaPickItemModel model =
                                PandaPickHelper.getStatusItem(index);
                            return RestaurantsScreen(
                                name: model.name,
                                remainingTime: model.remainingTime,
                                image: model.image,
                                subTitle: model.subTitle,
                                rating: model.rating,
                                totalRating: model.totalRating,
                                deliveryPrice: model.deliveryPrice,
                                deliveryTime: model.remainingTime);
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Burning Brownies',
                      style: TextStyle(
                          color: Color(0xff323232),
                          fontSize: 15,
                          fontFamily: Bold)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .278,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: PandaPickHelper.itemCount,
                          itemBuilder: (context, index) {
                            PandaPickItemModel model =
                                PandaPickHelper.getStatusItem(index);
                            return RestaurantsScreen(
                                name: model.name,
                                remainingTime: model.remainingTime,
                                image: model.image,
                                subTitle: model.subTitle,
                                rating: model.rating,
                                totalRating: model.totalRating,
                                deliveryPrice: model.deliveryPrice,
                                deliveryTime: model.remainingTime);
                          }),
                    ),
                  )
                ]),
          ),
        ));
  }
}
