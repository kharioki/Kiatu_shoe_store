import 'package:flutter/material.dart';
import 'package:kiatu_store/core/const.dart';

class ShoeModel {
  final String name;
  final double price;
  final String desc;
  final Color color;
  final String brand;
  final String imgPath;

  ShoeModel({
    this.name,
    this.price,
    this.desc,
    this.color,
    this.brand,
    this.imgPath,
  });

  static List<ShoeModel> list = [
    ShoeModel(
      name: "Nike Air Jordan 1 Retro High",
      desc:
          "Familiar but always fresh, the iconic Air Jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
      price: 184,
      color: AppColors.blueColor,
      brand: "Nike",
      imgPath: "2.png",
    ),
    ShoeModel(
      name: "Converse X OPI Chuck Taylor",
      desc:
          "Familiar but always fresh, the iconic Air Jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
      price: 123,
      color: AppColors.yellowColor,
      brand: "Converse",
      imgPath: "1.png",
    ),
    ShoeModel(
      name: "Nike Air Jordan 1 Retro High",
      desc:
          "Familiar but always fresh, the iconic Air Jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
      price: 135,
      color: AppColors.redColor,
      brand: "Nike",
      imgPath: "3.png",
    ),
    ShoeModel(
      name: "Vans Off-the-wall",
      desc:
          "The fresh design is rooted in Vans Surf’s “Off The Wall” ethos, with an injection of fun and sophistication to the traditional slide.",
      price: 135,
      color: AppColors.cyanColor,
      brand: "Vans",
      imgPath: "4.png",
    ),
    ShoeModel(
      name: "Adidas Stan Smith",
      desc:
          "adidas Stan Smith shoes get their name from a tennis icon and Grand Slam winner who rose to prominence wearing them. Today, they've become a staple in the wardrobes of many.",
      price: 203,
      color: AppColors.blackColor,
      brand: "Adidas",
      imgPath: "5.jpg",
    ),
  ];
}
