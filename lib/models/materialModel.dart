// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MaterialItemModel {
  String name;
  String remaingTime;
  String deliveryPrice;
  String image;
  String totalRating;
  String rating;
  String subTitle;
  MaterialItemModel({
    required this.name,
    required this.remaingTime,
    required this.deliveryPrice,
    required this.image,
    required this.totalRating,
    required this.rating,
    required this.subTitle,
  });
}

class DataMaterial {
  static var dataListModel = [
    MaterialItemModel(
        name: 'Burger',
        remaingTime: '30 min',
        deliveryPrice: '80',
        image: "assets/cake.jpg",
        totalRating: '300',
        rating: '4.5',
        subTitle: 'Backery'),
    MaterialItemModel(
        name: 'ChikenBurger',
        remaingTime: '25 min',
        deliveryPrice: '155',
        image: "assets/chicken.jpg",
        totalRating: '250',
        rating: '3.5',
        subTitle: 'Chiken'),
    MaterialItemModel(
        name: 'Kolkata',
        remaingTime: '45',
        deliveryPrice: '455',
        image: "assets/chinese.jpg",
        totalRating: '250',
        rating: '3.5',
        subTitle: 'burger')
  ];
  static MaterialItemModel getStatusItem(int position) {
    return dataListModel[position];
  }

  static var itemCount = dataListModel.length;
}
