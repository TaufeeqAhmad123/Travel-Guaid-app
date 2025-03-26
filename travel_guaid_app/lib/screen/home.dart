import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_guaid_app/const/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.2),
                Color.fromARGB(179, 115, 120, 107),
              ],
)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: Icon(
                    CupertinoIcons.guitars,
                    size: 35,
                    color: AppColor.primaryColor,
                  ),
                  onPressed: null),
              IconButton(
                  icon: Icon(
                    Icons.place,
                    color: AppColor.primaryColor,
                    size: 40,
                  ),
                  onPressed: null),
              IconButton(
                  icon: Icon(
                    CupertinoIcons.person_2,
                    color: Colors.white60,
                    size: 40,
                  ),
                  onPressed: null),

             
            ],
          ),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.secondaryColor,
              AppColor.tertiaryColor,
            ],
          ),
        ),
child: ListView(children: [],),

      ),
    );
  }
}