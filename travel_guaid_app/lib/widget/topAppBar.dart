import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_guaid_app/const/color.dart' ;

class topAppBar extends StatelessWidget {
  const topAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 50),
    
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text("Destination",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColor.primaryColor)),
       
       RawMaterialButton(
            shape: CircleBorder(),
            fillColor: Colors.white10,
            constraints: BoxConstraints.tightFor(width: 50, height: 50),
            
            elevation: 2,
            child: Icon(
              CupertinoIcons.search,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
       
      ],),
      
    );
  }
}
