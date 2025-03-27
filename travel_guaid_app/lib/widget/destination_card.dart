import 'package:flutter/material.dart';
import 'package:travel_guaid_app/const/color.dart';

class destinationCard extends StatelessWidget {
  final String image;
  const destinationCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          height: 200,
          width: MediaQuery.of(context).size.width - 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Opacity(
            opacity: 1,
            child: Container(
              margin: EdgeInsets.only(right: 20),
              height: 200,
              width: MediaQuery.of(context).size.width - 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [AppColor.secondaryColor, Colors.transparent],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
