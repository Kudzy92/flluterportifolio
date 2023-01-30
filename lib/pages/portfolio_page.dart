import 'package:flutter/material.dart';
import 'package:kudzy/utils/AppColors.dart';
import 'package:kudzy/utils/common_string.dart';
import 'package:kudzy/utils/text_style.dart';
import 'package:kudzy/widgets/app_image_widget.dart';
import 'package:kudzy/data/dummydata.dart';

import '../main.dart';

class PortfolioPage extends StatefulWidget {
  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    //var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Portfolio", style: headerTextStyle),
            SizedBox(
              height: 10,
            ),
            Text("my latest work.", style: subHeaderTextStyle),
            Column(
              children: projects
                  .map((item) => _itemWidget(
                        item,
                        200.0,
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }

  Widget _itemWidget(
    project,
    double width,
  ) {
    return SizedBox(
      width: width,
      child: InkWell(
        onTap: () {
          scaffoldkey.currentState.showBottomSheet((context) {
            return Container(
              color: cardBGColor,
              width: width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 200,
                    alignment: Alignment.center,
                    child: AppImageWidget(
                      imageUrl: project.cover,
                      fit: BoxFit.fitWidth,
                    ),
                    color: cardBGColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: Text(project.name, style: subHeaderTextStyle),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 5),
                    child: Text(project.description, style: textStyle),
                  ),
                ],
              ),
            );
          });
        },
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  // color: cardBGColor,
                  // image: DecorationImage(image: Image.network(image).image),
                  ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    project.cover,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      project.name,
                      style: textStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
