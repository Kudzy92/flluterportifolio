import 'package:flutter/material.dart';
import 'package:kudzy/utils/text_style.dart';
import 'package:kudzy/data/dummydata.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "About me",
              style: headerTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Making myself known",
              style: subHeaderTextStyle,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              about.desc,
              style: textStyle,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              about.desc1,
              style: textStyle,
            ),
            SizedBox(
              height: 5.0,
            ),
            Column(
                children:
                    skills.map((item) => _skillItemWidget(item)).toList()),
          ],
        ),
      ),
    );
  }
}

Widget _skillItemWidget(skill) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            skill.name,
            style: titleTextStyle,
          ),
          SizedBox(height: 5.0),
          FAProgressBar(
            currentValue: double.parse(skill.percentage),
            displayText: '%',
            progressGradient: LinearGradient(
              colors: [
                Color.fromRGBO(34, 35, 35, 1).withOpacity(0.75),
                Color.fromRGBO(33, 34, 34, 1).withOpacity(0.75),
              ],
            ),
          ),
        ],
      ));
}
