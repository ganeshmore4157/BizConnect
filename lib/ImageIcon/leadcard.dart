import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskCard extends StatelessWidget {
  final String taskName;

  TaskCard(this.taskName);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
      width: 260.0,
      height: 79.0,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                  Icons.leaderboard_sharp,
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
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Mob:-987654321',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                        'Intrestin:-Dev',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print('Read More');
                          },
                          child: Text(
                            'Action   ',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 20.0,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LeadCardContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      color: Colors.grey[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Lead',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LeadCardContainer()),
                );
                
                },
                child: Text('View All',style: TextStyle(color: Colors.blue),),
              ),
            ],
          ),
          SizedBox(height: 0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TaskCard('Mukesh Deshmukh'),
                TaskCard('Mukesh More'),
                TaskCard('Mukesh Deshmukh'),
                TaskCard('Mukesh More'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
