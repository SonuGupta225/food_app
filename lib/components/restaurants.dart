// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app/constats/colors.dart';
import 'package:food_app/constats/constants.dart';
import 'package:food_app/dashboard/detail_screen.dart';

class RestaurantsScreen extends StatefulWidget {
  // String PandaPickItemModel;

  String name;
  String remainingTime;
  String image;
  String subTitle;
  String rating;
  String totalRating;
  String deliveryPrice;
  String deliveryTime;
  RestaurantsScreen({
    // required this.PandaPickItemModel
    required this.name,
    required this.remainingTime,
    required this.image,
    required this.subTitle,
    required this.rating,
    required this.totalRating,
    required this.deliveryPrice,
    required this.deliveryTime,
  });

  @override
  State<RestaurantsScreen> createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        name: widget.name,
                        image: widget.image,
                      )));
        },
        child: Container(
          height: height * .4,
          width: width * .6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: [
                    Image(
                        fit: BoxFit.cover,
                        height: height * .2,
                        image: AssetImage(widget.image)),
                    Positioned(
                      top: 16,
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                            color: MyColors.primaryColor),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Flash 20% off',
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: Bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            widget.deliveryTime,
                            style: TextStyle(fontFamily: Bold, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                        color: Color(0xff323232),
                        fontSize: 14,
                        fontFamily: Bold),
                  ),
                  Row(
                    children: [
                      RatingBarIndicator(
                        rating: 2.75,
                        itemCount: 1,
                        itemSize: 24,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                      Text(
                        " " + widget.rating,
                        style: TextStyle(
                            color: Color(0xff323232),
                            fontSize: 12,
                            fontFamily: Bold),
                      ),
                      Text(
                        " (" + widget.totalRating + ")",
                        style: TextStyle(
                            color: Color(0xff323232),
                            fontSize: 12,
                            fontFamily: Bold),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                r"$ " + widget.subTitle,
                style: TextStyle(
                    color: Color(0xff707070),
                    fontSize: 12,
                    fontFamily: Regular),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.directions_bike,
                    size: 16,
                    color: MyColors.primaryColor,
                  ),
                  Text(
                    r" Rs " + widget.deliveryPrice,
                    style: TextStyle(
                        fontFamily: Regular,
                        color: Color(0xff707070),
                        fontSize: 12),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
