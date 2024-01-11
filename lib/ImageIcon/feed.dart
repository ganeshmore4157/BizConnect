import 'package:bizconnect/ImageIcon/FeedCards.dart';
import 'package:bizconnect/ImageIcon/FeedCards2.dart';
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
      height: 76.0,
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
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Good News all of you we',
                      style: GoogleFonts.lato(color: Colors.grey,fontSize: 14)
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
                        '8-1-2024       ',
                          style: TextStyle(
                            color: Colors.grey,fontSize: 13,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FeedCardContainer3()),
                            );
                            print('Read More');
                          },
                          child: Text(
                            'Read More  ',
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

class FeedCardContainer extends StatelessWidget {
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
                'Feed',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FeedCardContainer2()),
                );
                
                },
                child: Text('View All',style: TextStyle(color: Colors.blue),),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TaskCard('Mukesh DeshMukh'),
                TaskCard('Mukesh More'),
                 TaskCard('Mukesh DeshMukh'),
                TaskCard('Mukesh More'),
              ],
            ),
          ),
        ],
      ),
    );
  }

//   Widget _buildTaskCardWithButton(String taskName) {
//     return Row(
//       children: [
//         TaskCard(taskName),
//         SizedBox(width: 8.0), // Adjust the spacing between TaskCard and the button
//         ElevatedButton(
//           onPressed: () {
//             // Handle button press
//             // You can add your custom logic here
//           },
//           child: Text('Your Button'),
//         ),
//       ],
//     );
//   }
 }
