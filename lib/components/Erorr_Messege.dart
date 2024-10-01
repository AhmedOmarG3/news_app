import 'package:flutter/material.dart';

class Erorr_Messege extends StatelessWidget {
  const Erorr_Messege({
    super.key,required this.messege
  });
  final String messege;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      children: [
        const SizedBox(
          height: 300,
        ),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3), color: Colors.grey),
            child: Text(
              messege,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ))
      ],
    ));
  }
}