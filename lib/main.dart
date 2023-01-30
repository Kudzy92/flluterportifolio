import 'package:flutter/material.dart';
import 'package:kudzy/pages/home_page.dart';
import 'package:kudzy/pages/about_page.dart';
import 'package:kudzy/pages/education_page.dart';
import 'package:kudzy/pages/experience_page.dart';
import 'package:kudzy/pages/hireme_page.dart';
import 'package:kudzy/pages/service_page.dart';
import 'package:kudzy/pages/portfolio_page.dart';
import 'package:kudzy/pages/pricing_page.dart';
import 'package:kudzy/pages/team_page.dart';
import 'package:kudzy/pages/testimonial_page.dart';
import 'package:kudzy/pages/contact_page.dart';
import 'package:kudzy/pages/setting_page.dart';
import 'package:kudzy/utils/AppColors.dart';
import 'package:kudzy/utils/AppIcons.dart';

import 'widgets/navigation_menu_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kudzy.me',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController _tabController;
  int selectedMenuIndex = 0;
  //final databaseRef = FirebaseDatabase.instance.reference().child("Portfolio");
  @override
  void initState() {
    super.initState();

    _tabController = new TabController(length: 12, vsync: this);

    _tabController.addListener(() {
      setState(() {
        selectedMenuIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double iconSize = 20.0;
    return SafeArea(
      child: Scaffold(
        key: scaffoldkey,
        backgroundColor: backgroundDark,
        body: Container(
          margin: EdgeInsets.only(top: 10, left: 10),
          child: Row(
            children: <Widget>[
              Container(
                width: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    navigationMenu(navHome,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 0, onClick: () {
                      _tabController.animateTo(0);
                    }),
                    navigationMenu(navAbout,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 1, onClick: () {
                      _tabController.animateTo(1);
                    }),
                    navigationMenu(navEducation,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 2, onClick: () {
                      _tabController.animateTo(2);
                    }),
                    navigationMenu(navExperience,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 3, onClick: () {
                      _tabController.animateTo(3);
                    }),
                    navigationMenu(navHireme,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 4, onClick: () {
                      _tabController.animateTo(4);
                    }),
                    navigationMenu(navService,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 5, onClick: () {
                      _tabController.animateTo(5);
                    }),
                    navigationMenu(navPortfolio,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 6, onClick: () {
                      _tabController.animateTo(6);
                    }),
                    navigationMenu(navPricing,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 7, onClick: () {
                      _tabController.animateTo(7);
                    }),
                    navigationMenu(navTestimonial,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 8, onClick: () {
                      _tabController.animateTo(8);
                    }),
                    navigationMenu(navTeam,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 9, onClick: () {
                      _tabController.animateTo(9);
                    }),
                    navigationMenu(navContact,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 10, onClick: () {
                      _tabController.animateTo(10);
                    }),
                    navigationMenu(navSetting,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 11, onClick: () {
                      _tabController.animateTo(11);
                    }),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      HomePage(),
                      AboutPage(),
                      EducationPage(),
                      ExperiencePage(),
                      HiremePage(),
                      ServicePage(),
                      PortfolioPage(),
                      PricingPage(),
                      TestimonialPage(),
                      TeamPage(),
                      ContactPage(),
                      SettingPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
