import 'package:bizconnect/BottomNavigationBar/HomePagebottom.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeadForm extends StatefulWidget {
  @override
  _LeadFormState createState() => _LeadFormState();
}

class _LeadFormState extends State<LeadForm> {
  final _formKey = GlobalKey<FormState>();
  String? selectedLead;
  String? selectedLeadType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lead Details',
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
              const Text('Basic Info',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.grey)),
              const SizedBox(
                height: 5,
              ),

  //1:-Full Name
              const SizedBox(
                height: 10,
              ),
              const Text('Full Name:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
               TextFormField(
                 decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Full Name',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                )
              ),
              
  // 2:- Company Name

                const SizedBox(
                height: 10,
              ),
              const Text('Company Name:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
               TextFormField(
                 decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Company Name',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                )
              ),

//3:- Email
           
             const SizedBox(
                height: 10,
              ),
              const Text('Email:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
               TextFormField(
                 decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                )
              ),
//4:- Mobile
     const SizedBox(
                height: 10,
              ),
              const Text('Mobile:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
               TextFormField(
                 decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Mobile',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                )
              ),

             

 // 5:-Lead Status

              const SizedBox(
                height: 10,
              ),
              const Text('Lead Status:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              DropdownButtonFormField<String>(
                value: selectedLead,
                onChanged: (value) {
                  setState(() {
                    selectedLead = value;
                  });
                },
                items: [
                  'OPEN',
                  'ASSINGED',
                  'CONTACTED',
                  'QUALIFIED',
                  'UNQUALIFIED',
                  'PROPOSAL_SENT',
                  'CONVERTED'
                ]
                    .map((lead) => DropdownMenuItem(
                          value: lead,
                          child: Text(lead),
                        ))
                    .toList(),
                 decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Linked Status',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                )
              ),
              const SizedBox(
                height: 10,
              ),

 //6:- Lead Type
   const SizedBox(
                height: 10,
              ),
              const Text('Lead Type:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              DropdownButtonFormField<String>(
                value: selectedLeadType,
                onChanged: (value) {
                  setState(() {
                    selectedLeadType = value;
                  });
                },
                items: [
                  'HOT',
                  'WARM',
                  'COLD',
                ]
                    .map((type) => DropdownMenuItem(
                          value: type,
                          child: Text(type),
                        ))
                    .toList(),
                 decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Lead Type',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                )
              ),
              const SizedBox(
                height: 10,
              ),

  // 7:-Intrested In

              const SizedBox(
                height: 10,
              ),
              const Text('Intrested In:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Intrested In',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  isDense: true,
                ),
              ),

//8:-Buttons

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
                              builder: (context) => HomePageBottom(),
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
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePageBottom(),
                            ),
                           );
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
