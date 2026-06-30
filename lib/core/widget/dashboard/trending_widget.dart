import 'package:flutter/material.dart';

class TrendingWidget extends StatelessWidget {
  const TrendingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, build) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
          child: Container(
            // height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(color: Colors.white),
          ),
        );
      },
    );
  }
}
