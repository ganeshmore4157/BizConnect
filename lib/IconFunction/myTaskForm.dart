import 'package:bizconnect/IconFunction/mytask.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTaskForm extends StatefulWidget {
  @override
  _MyTaskFormState createState() => _MyTaskFormState();
}

class _MyTaskFormState extends State<MyTaskForm> {
  final _formKey = GlobalKey<FormState>();
  String? selectedStatus;
  String? selectedPriority;
  DateTime? selectedDate;
  String? selectedAssign;
  String? selectedSprint;
  String? selectedUser;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Task Details',
          textAlign: TextAlign.center,
          style:GoogleFonts.lato(fontSize: 25, color: Colors.white,fontWeight:FontWeight.bold),
        ),
      backgroundColor: Color.fromARGB(255, 108, 185, 248),
      iconTheme:IconThemeData(color: Colors.white)
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const Text('Status:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              DropdownButtonFormField<String>(
                value: selectedStatus,
                onChanged: (value) {
                  setState(() {
                    selectedStatus = value;
                  });
                },
                items: ['--Select Type--', 'To Do','In Progress', 'Done']
                    .map((status) => DropdownMenuItem(
                          value: status,
                          child: Text(status),
                        ))
                    .toList(),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Select Status',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                ),
              ),

  //2:-Priority

              const SizedBox(
                height: 10,
              ),
              const Text('Priority:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              DropdownButtonFormField<String>(
                value: selectedPriority,
                onChanged: (value) {
                  setState(() {
                    selectedPriority = value;
                  });
                },
                items: ['HIGH', 'MEDIUM', 'LOW']
                    .map((priority) => DropdownMenuItem(
                          value: priority,
                          child: Text(priority),
                        ))
                    .toList(),
                 decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Select Priority',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                ),
              ),

  //3:- Date

              const SizedBox(
                height: 10,
              ),
              const Text('Date:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      readOnly: true,
                      onTap: () => _selectDate(context),
                      decoration: InputDecoration(
                        contentPadding:    EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                          isDense: true,
                        border: OutlineInputBorder(),
                        hintText: selectedDate != null
                            ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                            : 'Select Date',
                        suffixIcon: Icon(Icons.calendar_today),
                      ),
                    ),
                  ),
                ],
              ),

  // 4:- Assign To

              const SizedBox(
                height: 10,
              ),
              const Text('Assign To:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              DropdownButtonFormField<String>(
                value: selectedAssign,
                onChanged: (value) {
                  setState(() {
                    selectedAssign = value;
                  });
                },
                items: [
                  'Mukesh More',
                  'Mukesh Deshmukh',
                  'Ganesh More',
                  'Mahesh Mane'
                ]
                    .map((assign) => DropdownMenuItem(
                          value: assign,
                          child: Text(assign),
                        ))
                    .toList(),
                 decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Assign To',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                ),
              ),

//5:- Sprint
           
              const SizedBox(
                height: 10,
              ),
              const Text('Sprint:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              DropdownButtonFormField<String>(
                value: selectedSprint,
                onChanged: (value) {
                  setState(() {
                    selectedSprint = value;
                  });
                },
                items: [
                  'TRNG-Sprint1',
                  'TRNG-Sprint2',
                  'TRNG-Sprint3',
                  'TRNG-Sprint4'
                ]
                    .map((sprint) => DropdownMenuItem(
                          value: sprint,
                          child: Text(sprint),
                        ))
                    .toList(),
                  decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                ),
              ),

//6:- Tags

              const SizedBox(
                height: 10,
              ),
              const Text('Tags:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                 decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Tag',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                ),
              ),

 // 7:-Linked User Story

              const SizedBox(
                height: 10,
              ),
              const Text('Linked User Story:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              DropdownButtonFormField<String>(
                value: selectedUser,
                onChanged: (value) {
                  setState(() {
                    selectedUser = value;
                  });
                },
                items: [
                  'TRNG-US5 PostMan',
                  'TRNG-Sprint2',
                  'TRNG-Sprint3',
                  'TRNG-Sprint4'
                ]
                    .map((user) => DropdownMenuItem(
                          value: user,
                          child: Text(user),
                        ))
                    .toList(),
                 decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Linked User Story',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                )
              ),
              const SizedBox(
                height: 10,
              ),

 //8:- Estimate Time

              const Text('Estimate Time(hrs):',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                 decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Estimate Time(hrs)',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                )
              ),

  // 9:-Logged Time   

              const SizedBox(
                height: 10,
              ),
              const Text('Logged Time (hrs):',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Logged Time(Hrs)',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                ),
              ),

 //10:-Task

              const SizedBox(
                height: 10,
              ),
              const Text('Task:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Task',
              ),
              ),

 //11:-Description

              const SizedBox(
                height: 10,
              ),
              const Text('Description:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                 decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Descriptoin',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30, horizontal: 12),
                  isDense: true,
                ),
              ),

//12:-Buttons

              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue.shade200,
                          Colors.blue.shade500,
                        ],
                        begin: FractionalOffset.centerLeft,
                        end: FractionalOffset.centerRight,
                      ),
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(),
                      child: TextButton(
                        onPressed: () {
                          setState(() {});
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyTask(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.0,
                            horizontal: 18.0,
                          ),
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      gradient: LinearGradient(
                        colors: [
                          Colors.red.shade200,
                          Colors.red.shade500,
                        ],
                        begin: FractionalOffset.centerLeft,
                        end: FractionalOffset.centerRight,
                      ),
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(),
                      child: TextButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.0,
                            horizontal: 18.0,
                          ),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
