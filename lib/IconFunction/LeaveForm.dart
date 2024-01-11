import 'package:bizconnect/BottomNavigationBar/HomePagebottom.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class LeaveForm extends StatefulWidget {
  @override
  _LeaveFormState createState() => _LeaveFormState();
}

class _LeaveFormState extends State<LeaveForm> {
  final _formKey = GlobalKey<FormState>();
  String? selectedLeave;
  DateTime? fromDate;
  DateTime? toDate;
  String? selectedOption;
  int? numberOfDays;

  Future<void> _selectDate(BuildContext context, bool isFromDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: fromDate ?? DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      setState(() {
        if (isFromDate) {
          fromDate = picked;
          if (selectedOption == 'Option 1') {
            selectedOption = 'Option 1';
            toDate = fromDate;
            numberOfDays = 1;
          }
        } else {
          selectedOption = null;
          toDate = picked;
          numberOfDays = toDate?.difference(fromDate ?? DateTime.now()).inDays;
        }
      });
    }
  }

  Widget _buildDateInput(bool isFromDate) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            readOnly: true,
            onTap: () => _selectDate(context, isFromDate),
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              isDense: true,
              border: OutlineInputBorder(),
              hintText: isFromDate
                  ? selectedOption == 'Option 1'
                      ? DateFormat('dd-MM-yyy').format(DateTime.now())
                      : (fromDate != null
                          ? DateFormat('dd-MM-yyy').format(fromDate!)
                          : 'Select Date')
                  : (toDate != null
                      ? DateFormat('dd-MM-yyy').format(toDate!)
                      : 'Select Date'),
              suffixIcon: Icon(Icons.calendar_today),
            ),
          ),
        ),
      ],
    );
  }

  RadioListTile<String> _buildRadioTile(String title, String value) {
    return RadioListTile<String>(
      title: Text(title),
      value: value,
      groupValue: selectedOption,
      onChanged: (newValue) {
        setState(() {
          selectedOption = newValue;
          if (selectedOption == 'Option 1') {
            toDate = fromDate;
            numberOfDays = 1;
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Leave Details',
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 108, 185, 248),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const Text('Leave Type:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              DropdownButtonFormField<String>(
                value: selectedLeave,
                onChanged: (value) {
                  setState(() {
                    selectedLeave = value;
                  });
                },
                items: [
                  '--Select Type--',
                  'Casual',
                  'Sick',
                  'Manternity',
                  'Paternity',
                  'Earned'
                ]
                    .map((leave) => DropdownMenuItem(
                          value: leave,
                          child: Text(leave),
                        ))
                    .toList(),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Select Leave type',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                ),
              ),
              _buildRadioTile('Single Day', 'Option 1'),
              const SizedBox(
                height: 10,
              ),
              const Text('From Date:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              _buildDateInput(true),
              const SizedBox(
                height: 10,
              ),
              const Text(' To Date:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              _buildDateInput(false),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'No of Days:',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                readOnly: selectedOption == 'Option 1',
                onTap: selectedOption == 'Option 1'
                    ? null
                    : () => _selectDate(context, false),
                onChanged: (value) {
                  setState(() {
                    numberOfDays = int.tryParse(value);
                    if (selectedOption == 'Option 1' && numberOfDays != null) {
                      toDate = fromDate?.add(Duration(days: numberOfDays! - 1));
                    }
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: numberOfDays != null ? numberOfDays.toString() : '',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Reason:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Reason',
                ),
              ),
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
                          Color.fromRGBO(64, 72, 235, 0.6),
                          Color.fromRGBO(5, 13, 158, 1),
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
                              builder: (context) => HomePageBottomPage(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 9.0,
                            horizontal: 25.0,
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
                          Color.fromARGB(255, 206, 194, 193),
                          Colors.red,
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
                            vertical: 9.0,
                            horizontal: 25.0,
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
