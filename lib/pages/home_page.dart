
import 'package:flutter/material.dart';
import 'package:kudzy/utils/AppColors.dart';
import 'package:kudzy/utils/text_style.dart';
import 'package:kudzy/data/dummydata.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           Text("Home",style: headerTextStyle,),
            SizedBox(height: 10,),
            Text("My indroduction",style: subHeaderTextStyle,),
          
          Padding(
            padding:EdgeInsets.only(top:20.0,bottom:10.0),
             child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(home.text,style: textStyle,),
                SizedBox(height: 20.0,),
             Text(home.name,style: homeTitleStyle,),
             SizedBox(height: 20.0,),
             Row(
              children:[
                Text("A",style:textStyle),
                SizedBox(width:3.0),
               Text(home.post,style: textStyle,),
              ]
              

              ),
               SizedBox(height: 20.0,),
              Text(about.desc,style: textStyle),
              SizedBox(height:20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[ 
                  Container(
                width:200.0,
                height:200.0,
                decoration: BoxDecoration(
                  border: Border.all(color: themeColor,width:2.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0)
                  ),
                ),
                child:Image.asset(home.imageUrl),
                ),
                 SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: social.map((item) =>  Padding(padding:EdgeInsets.all(2.0),child:SvgPicture.asset(item.icon, height: 30.0, width: 30.0,),)).toList(),
                  )
                ]
              ),
               ],
             ),
      ),
        ],
      ),
    );
  }
}
