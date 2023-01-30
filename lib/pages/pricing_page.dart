import 'package:flutter/material.dart';
import 'package:kudzy/utils/text_style.dart';

class PricingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Pricing",style: headerTextStyle,),
            SizedBox(height: 10,),
            Text("Affordable pricing plans",style: subHeaderTextStyle,),
          ],
        ),
      ),
    );
  }
}