import 'package:flutter/material.dart';
import 'package:kudzy/utils/AppColors.dart';
import 'package:kudzy/utils/text_style.dart';
import 'package:kudzy/data/dummydata.dart';

class ExperiencePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height:80.0,
               child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           Text(
              "Professional Experience",
              style: headerTextStyle,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "What I did in the past and gained.",
              style: subHeaderTextStyle,
            ),
          ]
               ),
            ),
            Padding(
              padding: EdgeInsets.only(top:20.0,bottom:10.0,),
              child:Column(
                children: experiences.map((item) => _itemWidget(item)).toList(),
              )
            ),
           
          ],
        ),
      ),
    );
  }

  Widget _itemWidget(experience) {
    final post= experience.post;
  final orgname= experience.orgname;
  final location= experience.location;
  //final orgurl= experience.orgurl;
  final description= experience.description;
   final year= experience.year;
    final duration= experience.duration;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
       padding: EdgeInsets.only(right:10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 15,
                width: 15,
                margin: EdgeInsets.only(right: 10),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: themeColor),
              ),
              Text(
                post,
                style: titleTextStyle,
              )
            ],
          ),
         
          
          Container(
            margin: EdgeInsets.only(left: 6, top: 10),
            decoration: BoxDecoration(
                border: Border(left: BorderSide(width: 2, color: themeColor))),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
            padding:EdgeInsets.only(left:15.0,top:10.0,bottom: 5.0,right:10.0),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              
              Text(orgname,style: smallTextStyle ,),
            Text(location,style: smallTextStyle ,),
             
          ],
          ),
          ),
               Row(
              children: [
                Expanded(
                  child:  Container(
              
              margin: const EdgeInsets.only(left: 8.0,right:10.0),
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: cardBGColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text(description,style: textStyle),
              ],
              ),
            ),
                ),
                
                 Container(
                  width:50.0,
                  height: 50.0,
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: cardBGColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               Text(year,style: smallTextStyle ,),
               SizedBox(height:4.0),
               Text(duration,style: smallTextStyle ,),
              ],
              ),
                 ),

            ],),
            ],
            ),
          
          )
        ],
      ),
    );
  }
}
