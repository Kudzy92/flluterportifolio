import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kudzy/data/dummydata.dart';
import 'package:kudzy/utils/AppColors.dart';
import 'package:kudzy/utils/text_style.dart';


class ServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Your services",style: headerTextStyle,),
            SizedBox(height: 10,),
            Text("What I provide.",style: subHeaderTextStyle,),

            
             Padding(
              padding: EdgeInsets.only(top:20.0,bottom:10.0,),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: services.map((item) => _itemWidget(item)).toList(),
              )
            ),
          ],
        ),
      ),
    );
  }
}

Widget _itemWidget(service){
  final int index=service.id;

  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius:index %2==0 ? BorderRadius.only(
          topRight:Radius.circular(30.0),
           bottomRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
          ):BorderRadius.only(
          topLeft:Radius.circular(30.0),
           bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
          ),
                  color: cardBGColor,
      ),
      child:Column(
       crossAxisAlignment: index %2==0 ?  CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          SvgPicture.asset(service.icon,width:30.0,height:30.0,color: themeColor,),
          SizedBox(height:10.0),
          Text(service.title,style:titleTextStyle,),
          SizedBox(height:8.0),
          Text(service.desc,style:textStyle),
        ],
      )
    ),
    );
}