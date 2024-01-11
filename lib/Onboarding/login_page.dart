import 'package:bizconnect/Onboarding/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//  Color.fromRGBO(143, 148, 251, .6),
//fromRGBO(143, 148, 251, .6),
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 326,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://bizconnect.avertastrategy.com/assets/images/biz-connect.png'),
                      fit: BoxFit.contain),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 0.1,
                      child: Container(
                        margin: const EdgeInsets.only(top: 230),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              style: GoogleFonts.lato(
                                color: Colors.black,   //fromRGBO(143, 148, 251, 1)
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: '     Login to your \n',
                                ),
                                TextSpan(
                                  text: '     account\n',
                                ),
                                TextSpan(
                                    text:
                                        '         Enter your credentials to proceed',
                                    style: GoogleFonts.lato(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromRGBO(143, 148, 251, 1)),
                        boxShadow: [
                          const BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(143, 148, 251, 1)),
                              ),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.email,
                                  color: Colors.grey                //fromRGBO(143, 148, 251, 1),
                                ),
                                const SizedBox(width: 8.0),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[700]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.lock,
                                  color: Colors.grey                    //fromRGBO(143, 148, 251, 1),
                                ),
                                const SizedBox(width: 8.0),
                                Expanded(
                                  child: TextField(
                                    obscureText: _isHidden,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[700]),
                                      suffix: InkWell(
                                          onTap: _togglePasswordView,
                                          child: Icon(
                                            _isHidden
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(colors: [
                          Color.fromRGBO(64, 72, 235, 0.6),
                          Color.fromRGBO(5, 13, 158, 1),
                        ]),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Center(
                          child: Text(
                            "Login",
                            style: GoogleFonts.lato(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Text(
                      "Forgot Password?",
                      style: GoogleFonts.lato(
                          color: Color.fromRGBO(143, 148, 251, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
