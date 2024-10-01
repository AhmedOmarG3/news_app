import 'package:flutter/material.dart';

class Indecator extends StatelessWidget {
  const Indecator({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
        child: Column(
      children: [
        SizedBox(
          height: 300,
        ),
        CircularProgressIndicator(),
      ],
    ));
  }
}