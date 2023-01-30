import 'package:flutter/material.dart';
import 'package:kudzy/utils/AppColors.dart';
import 'package:kudzy/utils/text_style.dart';

class TeamPage extends StatelessWidget {
  final descriptions =
      "A self taught and design thinking freelance software developer specialising in developing website and mobile applications using Java, Flutter, ReactJS, JavaScript  and Spring Boot. And also learning clould development.";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Our Team",
              style: headerTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Meet our team",
              style: subHeaderTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            _itemWidget(
                "Kudzai Madziva", "assets/kudzy-no-bg.png", descriptions),
            /* _itemWidget("Jhon Deo", "assets/avtar2.png", descriptions),
            _itemWidget("Jhon Deo", "assets/avtar3.png", descriptions),
            _itemWidget("Jhon Deo", "assets/avtar4.png", descriptions),*/
          ],
        ),
      ),
    );
  }

  Widget _itemWidget(name, image, description) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: cardBGColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(image),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: subHeaderTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  description,
                  style: bodyTextStyle,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
