import 'package:flutter/material.dart';
import 'package:kudzy/utils/AppColors.dart';
import 'package:kudzy/utils/text_style.dart';
import 'package:kudzy/data/dummydata.dart';
class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Education",style: headerTextStyle,),
            SizedBox(height: 10,),
            Text("What have compeleted academically ?",style: subHeaderTextStyle,),

             Padding(
              padding: EdgeInsets.only(top:20.0,bottom:10.0,),
              child:Column(
                children: educations.map((item) => _itemWidget(item)).toList(),
              )
            ),
          ],
        ),
      ),
    );
  }
}
Widget _itemWidget(education) {
 
    final level= education.level;
  final schoolname= education.schoolname;
  final location= education.location;
  //final schoolurl= education.schoolurl;
  final description= education.description;
   final year= education.year;
    final duration= education.duration;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(right: 10),
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
                level,
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
              
              Text(schoolname,style: smallTextStyle ,),
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

