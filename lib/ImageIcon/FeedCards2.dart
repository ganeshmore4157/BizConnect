import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskCard extends StatelessWidget {
  final String taskName;

  TaskCard(this.taskName, [Size]);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
      width: 410.0,
      height: 220.0,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 35.0,
                height: 35.0,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Center(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    print('testing');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                        taskName,
                        style:GoogleFonts.lato( fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black)
                      ),
                      Text(
                        'Sprint Demo Schedule for Tomorrow 10-Jun (Sat)\n'
                        'KrushServ Team : 03:30 PM - 04:00 PM\n'
                        'Rentomed Team : 04:00 PM - 04:30 PM\n'
                        'Agrolist Team : 04:30 PM - 05:00 PM\n'
                        'TME Team : 05:00 PM - 05:30 PM\n'
                        'Google Meet Link : https://meet.google.com/aki-snjc',
                        style: GoogleFonts.lato(color: Color.fromARGB(255, 41, 39, 39), fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.grey,
                            size: 14,
                          ),
                          Text(
                            '8-1-2024                                                    ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
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

class FeedCardContainer3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Feed',
          style: GoogleFonts.lato(
            fontSize: 25,
            fontWeight: FontWeight.bold,color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 108, 185, 248),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        color: Colors.grey[50],
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TaskCard('Mukesh Deshmukh'),
              // TaskCard('Mukesh More'),
              // TaskCard('Mukesh DeshMukh'),
              // TaskCard('Mukesh More'),
            ],
          ),
        ),
      ),
    );
  }
}
