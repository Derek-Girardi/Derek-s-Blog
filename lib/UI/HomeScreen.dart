import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xff354651),
                Color(0xff354047),
                Color(0xff33383D),
                Color(0xff323232),
              ],
                  stops: [
                0.1,
                0.4,
                0.7,
                0.9
              ])),
        ),
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.amber,
                    fontFamily: 'OpenSans',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40.0),
                _emailField(),
                SizedBox(height: 40.0),
                _passwordField(),
                _forgotPasswordBtn(),
                //  _rememberMe(),
                //  _loginBtn(),
                //  _signInTextSeparator(),
                // _otherLoginBtns(),
                // _signupBtn(),
                //other fucntions
              ],
            ))
      ],
    ));
  }
}

Widget _emailField() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Email',
        style: TextStyle(
          color: Colors.amber,
          fontFamily: 'OpenSans',
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10.0),
      Container(
          decoration: BoxDecoration(
              color: Color(0xFF6CA8F1),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    offset: Offset(0, 2))
              ]),
          alignment: Alignment.centerLeft,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.amber,
              fontFamily: 'OpenSans',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ))
    ],
  );
}

Widget _passwordField() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Password',
        style: TextStyle(
          color: Colors.amber,
          fontFamily: 'OpenSans',
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10.0),
      Container(
          alignment: Alignment.centerLeft,
          //decoration: BoxDecoration(

          //  ),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Enter your password',
              labelStyle: TextStyle(
                color: Colors.amber,
                fontFamily: 'OpenSans',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ))
    ],
  );
}

Widget _forgotPasswordBtn() {
  return Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: () =>
       print('press me') ,
      child: Text(
        'Forgot Password?'
      ),
  ));
}

Widget _rememberMe() {}
Widget _loginBtn() {}
Widget _signInTextSeparator() {}
Widget _otherLoginBtns() {}
Widget _signupBtn() {}
