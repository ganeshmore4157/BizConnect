import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskCard extends StatelessWidget {
  final String taskName;

  TaskCard(this.taskName);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          width: 360.0,
          height: 175.0,
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 35.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.note_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            print('testing');
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                taskName,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Deadline 8-1-2024, Mon',
                                    style: TextStyle(
                                      color: Colors.orange,
                                    ),
                                  ),
                                ],
                              ),
                              Text('Waiting Approval')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  'Today Task ',
                                  style: GoogleFonts.lato(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    height: 2,
                                  ),
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
        ),
      ],
    );
  }
}

class MyTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Task',
          style: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle top button press
                    print('Top Button Pressed');
                  },
                  child: Text('All'),
                ),
                TextButton(
                  onPressed: () {
                    // Handle bottom button press
                    print('Bottom Button Pressed');
                  },
                  child: Text('Today'),
                ),
                TextButton(
                  onPressed: () {
                    // Handle bottom button press
                    print('Bottom Button Pressed');
                  },
                  child: Text('Tomorrow'),
                ),
                TextButton(
                  onPressed: () {
                    // Handle bottom button press
                    print('Bottom Button Pressed');
                  },
                  child: Text('This Month'),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Column(
                    children: [
                      TaskCard('Finance Monthly report'),
                      TaskCard('Task 2'),
                      TaskCard('Task 3'),
                      TaskCard('Task 4'),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}

