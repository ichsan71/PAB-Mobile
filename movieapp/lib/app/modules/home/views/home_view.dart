import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movieapp/app/data/movie_models.dart';
import 'package:movieapp/app/modules/home/views/itemCard.dart';
import 'package:movieapp/app/service/movie_service.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final data = MovieService();
    return Scaffold(
        appBar: AppBar(
          title: Text('Movie Catalog'),
          centerTitle: true,
        ),
        body: controller.obx(
          (data) => ListView.builder(
            itemCount: data!.length,
            itemBuilder: (context, index) => ItemCard(
              judul: data[index]['title'],
              popularity: data[index]['popularity'],
            ),
          ),
        ));
  }
}
