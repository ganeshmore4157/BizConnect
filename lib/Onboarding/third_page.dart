import 'package:bizconnect/Onboarding/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int activeButton = 3;
  double buttonWidth = 500.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://cdn5.vectorstock.com/i/1000x1000/13/19/big-smile-humble-welcoming-employe-or-businessman-vector-28451319.jpg',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              print('Error loading image: $error');
              return Center(
                child: Text('Image Error'),
              );
            },
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.lato(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'Smart & Fast',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Take A Look New Design Concept For The\n'
                        ' The Employee Management Mobile App \n'
                        '                         UI UX Design',
                        style: GoogleFonts.lato(fontWeight: FontWeight.normal,color: Colors.grey),),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Indicator(activeButton == 1),
                          SizedBox(width: 10),
                          Indicator(activeButton == 2),
                          SizedBox(width: 10),
                          Indicator(activeButton == 3),
                        ],
                      ),
                      SizedBox(height: 30),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                              constraints: BoxConstraints(
                                minWidth: 400,
                              ),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    activeButton = 3;
                                  });
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyApp(),
                                    ),
                                  );
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 11.0,
                                    horizontal: 21.0,
                                  ),
                                  child: const Text(
                                    'Next',
                                    style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white, fontSize: 15.0,),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                activeButton = 3;
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyApp(),
                                ),
                              );
                            },
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                color: Colors.blue,fontWeight:FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            
                          ),
                        ],
                      ),
                      SizedBox(height: 20,)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final bool isActive;

  Indicator(this.isActive);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.blue : Colors.grey,
      ),
    );
  }
}
