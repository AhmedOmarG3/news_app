import 'package:news_app_ui_setup/Models/Category_Model.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/components/category.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({
    super.key,
  });
  final List<CategoryModel> categories = [
    CategoryModel(image: 'assets/technology.jpeg', name: 'Technology'),
    CategoryModel(image: 'assets/general.jpg', name: 'General'),
    CategoryModel(image: 'assets/science.avif', name: 'Science'),
    CategoryModel(image: 'assets/entetainment.jpg', name: 'Entertainment'),
    CategoryModel(image: 'assets/business.webp', name: 'Business'),
    CategoryModel(image: 'assets/health.avif', name: 'Health'),
    CategoryModel(image: 'assets/Sports.jpeg', name: 'Sports'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Category_Card(
          model: categories[index],
        ),
      ),
    );
  }
}
