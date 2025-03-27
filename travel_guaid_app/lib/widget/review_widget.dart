  import 'package:flutter/material.dart';
import 'package:travel_guaid_app/const/style.dart';

Container reviewWidget(BuildContext context) {
    return Container(
            padding: const EdgeInsets.only(
                top: 0, left: 25, right: 25, bottom: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage('assets/man.jpeg'),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryText(
                            text: 'Raheel Ghazali',
                            size: 16,
                          ),
                          PrimaryText(
                              text: 'Jan 25',
                              size: 10,
                              color: Colors.white24),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      PrimaryText(
                          text:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
                          size: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white38),
                    ],
                  ),
                )
              ],
            ),
          );
  }

