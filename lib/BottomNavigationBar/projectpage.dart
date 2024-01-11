import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProject extends StatelessWidget {
  final String taskName;
  final String buttonText1;
  final Color buttonColor1;
  // final String buttonText2;
  // final Color buttonColor2;

  MyProject(this.taskName, this.buttonText1, this.buttonColor1);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: 360.0,
      height: 150.0,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 35.0,
              height: 35.0,
              margin: EdgeInsets.all(19.0),
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
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('testing');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      taskName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('SOFTWARE | PRIVATE'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Start Date:8-1-2024',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                     Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                    
                    },style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(buttonColor1)),
                    child: Text(buttonText1,style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(width: 25,),
                  ElevatedButton(
                    onPressed: () {
                  
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, 
                    ),
                    child: Text('Update',style: TextStyle(color: Colors.blue),),
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

class Myproject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Project List',
          style: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 108, 185, 248),
      ),
      body: Column(
        children: [
         /* SingleChildScrollView(
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
          ),      */
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),             
                  SizedBox(height: 10),
                  Column(
                    children: [
                      MyProject('BizConnect_V1',
                      'Open',
                      Colors.green,
                      ),
                      MyProject('Rentomed',
                      'Close',
                      Colors.red,
                      ),
                      MyProject('USMS',
                      'Open',
                      Colors.green,
                      ),
                      MyProject('ECOM Platform',
                      'Close',
                      Colors.red),
                      MyProject('Razorcrest Website',
                      'Open',
                      Colors.green,
                      ),
                      MyProject('ShamKanti Website',
                      'Open',
                      Colors.green
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
