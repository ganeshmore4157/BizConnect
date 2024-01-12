import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Holiday extends StatelessWidget {
  final String taskName;
  final String buttonText1;
  final Color buttonColor1;
   final TextStyle buttonTextStyle1;
    final String buttonTextStyle2;
  //final String buttonText2;
  //final Color buttonColor2;

  Holiday(this.taskName, this.buttonText1, this.buttonColor1,this.buttonTextStyle1,this.buttonTextStyle2);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: 370.0,
      height:110.0,
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
                        style:GoogleFonts.lato( fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black)
                      ),
                       Text(
                           buttonTextStyle2,
                           style: GoogleFonts.lato(height: 2,fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 13),
                        ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          
                          child: Text(buttonText1,style:buttonTextStyle1),
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
            fontSize: 25,
            fontWeight: FontWeight.bold,color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 108, 185, 248),
        iconTheme: IconThemeData(color: Colors.white),
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
                        '   Jan 26, 2024',
                        'COMPULSORY',
                        Colors.white,
                         TextStyle(color: Colors.pink),
                         '   Republic Day | PUBLIC'
                      ),
                      Holiday(
                        '	  Mar 25, 2024',
                        'COMPULSORY',
                        Colors.white,
                        TextStyle(color: Colors.pink),
                        '   Holi | PUBLIC'
                      ),
                       Holiday(
                        '	  Mar 29, 2024',
                        '	OPTIONAL',
                        Colors.white,
                        TextStyle(color: Colors.blue),
                        '   Good Friday |	GENERAL'
                      ),
                         Holiday(
                        '	  Apr 9, 2024',
                        'COMPULSORY',
                        Colors.white,
                        TextStyle(color: Colors.pink),
                        '   Gudi Padwa | PUBLIC'
                      ),
                         Holiday(
                        '	  Apr 11, 2024',
                        'COMPULSORY',
                        Colors.white,
                        TextStyle(color: Colors.pink),
                        '   Eid al-Fitr (Ramadan) | PUBLIC'
                      ),
                         Holiday(
                        '	  May 1, 2024',
                        'COMPULSORY',
                        Colors.white,
                        TextStyle(color: Colors.pink),
                        '   Maharashtra Day / Workers day | PUBLIC'
                      ),
                        Holiday(
                        '	  Jun 17, 2024',
                        '	OPTIONAL',
                        Colors.white,
                        TextStyle(color: Colors.blue),
                        '   Eld-ul-Zuha (Bakrid) |	GENERAL'
                      ),
                         Holiday(
                        '	  Jun 17, 2024',
                        '	OPTIONAL',
                        Colors.white,
                        TextStyle(color: Colors.blue),
                        '   Muharram |	GENERAL'
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
