import 'package:flutter/material.dart';
import 'package:kudzy/utils/text_style.dart';

class HiremePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Hire me",style: headerTextStyle,),
            SizedBox(height: 10,),
            Text("I'm ready for the next project.",style: subHeaderTextStyle,),
          ],
        ),
      ),
    );
  }
}