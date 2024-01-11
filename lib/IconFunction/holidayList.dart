import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Holiday extends StatelessWidget {
  final String taskName;
  final String buttonText1;
  final Color buttonColor1;
  //final String buttonText2;
  //final Color buttonColor2;

  Holiday(this.taskName, this.buttonText1, this.buttonColor1);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: 360.0,
      height:100.0,
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
              width: 20.0,
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              ),
              SizedBox(width: 10,),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(buttonColor1),
                              fixedSize: MaterialStateProperty.all<Size>(
                               Size(100,0),
                            ),
                          ),
                          child: Text(buttonText1, style: TextStyle(color: Colors.white)),
                        ),
                        SizedBox(width: 20),
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   style: ElevatedButton.styleFrom(
                        //     primary: buttonColor2,
                        //   ),
                        //   child: Text(buttonText2, style: TextStyle(color: Colors.white)),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
           
              // child: Center(
              //   child: Icon(
                
              //     size: 15.0,
              //     color: Colors.white,
              //   ),
              // ),
            
          ],
        ),
      ),
    );
  }
}

class HolidayList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Holiday List',
          style: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 108, 185, 248),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Holiday(
                        '   Jan 26, 2024 \n '
                        '  Republic Day | Public',
                        'COMPULSORY',
                        Colors.pink.shade200
                      ),
                      Holiday(
                        '	  Mar 25, 2024 \n'
                        '   Holi | PUBLIC',
                        'COMPULSORY',
                        Colors.pink.shade200
                      ),
                       Holiday(
                        '	  Mar 29, 2024 \n'
                        '   Good Friday |	GENERAL',
                        '	OPTIONAL',
                        Colors.blue
                      ),
                         Holiday(
                        '	  Apr 9, 2024 \n'
                        '   Gudi Padwa | PUBLIC',
                        'COMPULSORY',
                        Colors.pink.shade200
                      ),
                         Holiday(
                        '	  Apr 11, 2024 \n'
                        '   Eid al-Fitr (Ramadan) | PUBLIC',
                        'COMPULSORY',
                        Colors.pink.shade200
                      ),
                         Holiday(
                        '	  May 1, 2024 \n'
                        '   Maharashtra Day / Workers day | PUBLIC',
                        'COMPULSORY',
                        Colors.pink.shade200
                      ),
                        Holiday(
                        '	  Jun 17, 2024 \n'
                        '   Eld-ul-Zuha (Bakrid) |	GENERAL',
                        '	OPTIONAL',
                        Colors.blue
                      ),
                         Holiday(
                        '	  Jun 17, 2024 \n'
                        '   Muharram |	GENERAL',
                        '	OPTIONAL',
                        Colors.blue
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
