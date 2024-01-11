import 'package:bizconnect/IconFunction/myTaskForm.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProject extends StatelessWidget {
  final String taskName;

  MyProject(this.taskName);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: 360.0,
      height: 150.0,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 35.0,
              height: 35.0,
              margin: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: const Center(
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      taskName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Deadline:8-1-2024 , Mon',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                  Container(
                  height: 55,
                  width: 220,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
            Container(
              width: 20.0,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        margin: const EdgeInsets.all(8.0),
      ),
    );
  }
}

class MyTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Task',
          style: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
          backgroundColor: Color.fromARGB(255, 108, 185, 248),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      MyProject('Finance Monthly report'),
                      MyProject('Task 2'),
                      MyProject('Task 3'),
                      MyProject('Task 4'),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
         floatingActionButton: FloatingActionButton(
        onPressed: () {
         Navigator.pushReplacement(
         context,
        MaterialPageRoute(builder: (context) => MyTaskForm()),
        );
          print('Add button pressed');
        },
        tooltip: 'Add',
        child: Icon(Icons.add,
        color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 108, 185, 248),
      ),
    );
  }
}
   
