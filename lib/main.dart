import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_morty/home.dart';
import 'package:rick_morty/home_binding.dart';

void main(){
  runApp(GetMaterialApp(
    title: 'Rick and Morty',
    initialRoute: '/home',
    getPages: [
      GetPage(name: '/home', page: ()=> const HomePage(), binding: HomeBinding())
    ],
  ));
}