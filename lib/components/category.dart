import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Models/Category_Model.dart';
import 'package:news_app_ui_setup/Screens/Category_View.dart';

class Category_Card extends StatelessWidget {
  const Category_Card({super.key, required this.model});
  final CategoryModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return CategoryView(category: model.name,);
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage(model.image), fit: BoxFit.fill)),
          height: 100,
          width: 170,
          child: Center(
            child: Text(
              model.name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
