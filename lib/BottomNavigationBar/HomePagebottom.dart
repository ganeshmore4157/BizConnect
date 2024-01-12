import 'package:bizconnect/BottomNavigationBar/ScrollableCards.dart';
import 'package:bizconnect/IconFunction/LeadForm.dart';
import 'package:bizconnect/IconFunction/LeaveForm.dart';
import 'package:bizconnect/IconFunction/holidayList.dart';
import 'package:bizconnect/IconFunction/mytask.dart';
import 'package:bizconnect/ImageIcon/FeedCards.dart';
import 'package:bizconnect/ImageIcon/UserInfo.dart';
import 'package:bizconnect/ImageIcon/feed.dart';
import 'package:bizconnect/ImageIcon/leadcard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageBottomPage(),
    );
  }
}

class HomePageBottomPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePageBottomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Here we call UserInfo Class
            UserInfoContainer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildIconWithText(
                    'https://cdn3.iconfinder.com/data/icons/leto-user-group/64/__company_group_people-64.png',
                    'Attendance',
                    context,
                    NewPage(),
                  ),
                  buildIconWithText(
                    'https://cdn0.iconfinder.com/data/icons/leto-insurance-2/64/insurance_medical_protection_policy-64.png',
                    'Leave',
                    context,
                    LeaveForm(),
                  ),
                  buildIconWithText(
                    'https://cdn3.iconfinder.com/data/icons/leto-user-group/64/__user_person_profile-64.png',
                    'Lead',
                    context,
                    LeadForm(),
                  ),
                  buildIconWithText(
                    'https://cdn0.iconfinder.com/data/icons/leto-survey-rating/64/__laptop_online_survey_checkmark_select-64.png',
                    'Feed',
                    context,
                    FeedCardContainer2(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildIconWithText(
                    'https://cdn0.iconfinder.com/data/icons/leto-survey-rating/64/__pen_survey_tasks_todo_list-64.png',
                    '     My Task      ',
                    context,
                    MyTask(),
                  ),
                  buildIconWithText(
                    'https://cdn0.iconfinder.com/data/icons/leto-ui-generic-1/64/leto-04-64.png',
                    'Profile',
                    context,
                    NewPage(),
                  ),
                  buildIconWithText(
                    'https://cdn1.iconfinder.com/data/icons/leto-travel-vacation/64/__airport_plane_travel-64.png',
                    'Holiday',
                    context,
                    HolidayList(),
                  ),
                  buildIconWithText(
                    'https://cdn2.iconfinder.com/data/icons/leto-blue-big-data/64/big_data_data_variety_analytics_different_type-64.png',
                    'T.OverView',
                    context,
                    AnotherNewPage(),
                  ),
                ],
              ),
            ),
            TodayTaskContainer(),
            FeedCardContainer(),
            LeadCardContainer(),
          ],
        ),
      ),
    );
  }

  Widget buildIconWithText(
      String imageUrl, String text, BuildContext context, Widget page) {
    return Column(
      children: [
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page),
              );
            },
            child: Image.network(
              imageUrl,
              width: 54,
              height: 44,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(text,style: GoogleFonts.lato(fontWeight: FontWeight.bold),),
      ],
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Center(
        child: Text('This is a new page.'),
      ),
    );
  }
}

class AnotherNewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Another New Page'),
      ),
      body: Center(
        child: Text('This is another new page.'),
      ),
    );
  }
}
