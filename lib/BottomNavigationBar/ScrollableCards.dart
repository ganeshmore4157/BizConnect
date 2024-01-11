import 'package:bizconnect/BottomNavigationBar/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
          borderRadius: BorderRadius.circular(10.0),
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
                color: Colors.blue[100],
              ),
              child: Center(
                child: Icon(
                  Icons.note_outlined,
                  color: Colors.blue[80], 
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      taskName,
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
                  size: 15,
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

class TodayTaskContainer extends StatelessWidget {
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
                'Task',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyTask()),
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
                TaskCard('Finance Monthly Report'),
              
                TaskCard('Task 2'),
              
                TaskCard('Task 3'),
            
                TaskCard('Task 4'),
              
              ],
            ),
          ),
        ],
      ),
    );
  }
}
