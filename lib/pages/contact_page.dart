import 'package:flutter/material.dart';
import 'package:kudzy/utils/text_style.dart';
import 'package:kudzy/utils/AppColors.dart';
import 'package:kudzy/widgets/svg_loader.dart';
import 'package:kudzy/data/dummydata.dart';


class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Contact me",style: headerTextStyle,),
            SizedBox(height: 10,),
             Text("Say hello",style: subHeaderTextStyle,),
             Padding(
              padding: EdgeInsets.only(top:20.0,bottom:10.0),
              child:Column(
                children: contacts.map((item)=>_itemWidget(item)).toList(),
              ),
              ),
            
          ],
        ),
      ),
    );
  }
  Widget _itemWidget(item){
    return Container(
      width: double.infinity,
margin: const EdgeInsets.all(5.0),
padding: const EdgeInsets.all(10.0),
                 
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: cardBGColor),
                  
                  child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          svgLoader(item.icon),
          SizedBox(height:8.0),
          Text(item.text1,style: subHeaderTextStyle,),
          SizedBox(height:8.0),
          Text(item.text2,style: bodyTextStyle,),
        ],
      ),
      );
    
  }
}
