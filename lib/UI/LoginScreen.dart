import 'package:derek_blog/UI/HomeScreen.dart';
import 'package:derek_blog/UI/SignUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:derek_blog/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          //Background color gradient
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
                  style: textFieldStyle,
                ),
                SizedBox(height: 40.0),
                _emailField(),
                SizedBox(height: 40.0),
                _passwordField(),
                SizedBox(height: 10.0),
                _rememberAndForgotRowBtns(),
                _loginBtn(),
                _otherLoginBtns(),
                SizedBox(height: 20.0),
                _signupBtn(),
              ],
            ))
      ],
    ));
  }

  Widget _emailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: textFieldStyle,
        ),
        SizedBox(height: 10.0),
        Container(
            decoration: boxDecorationStyle,
            alignment: Alignment.centerLeft,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: textFieldStyle,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.email_rounded,
                    color: Colors.white,
                  ),
                  hintText: 'Enter your email',
                  hintStyle: GoogleFonts.roboto(
                    color: Colors.white24,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
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
          style: textFieldStyle,
        ),
        SizedBox(height: 10.0),
        Container(
            decoration: boxDecorationStyle,
            alignment: Alignment.centerLeft,
            child: TextField(
              obscureText: true,
              style: textFieldStyle,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.vpn_key_rounded,
                  color: Colors.white,
                ),
                hintText: 'Enter your password',
                hintStyle: GoogleFonts.roboto(
                  color: Colors.white24,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ))
      ],
    );
  }

  Widget _rememberAndForgotRowBtns() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
            child: Row(children: <Widget>[
          Checkbox(
              value: _rememberMe,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              }),
          Text('Remember Me', style: textFieldStyle)
        ])),
        Container(
            child: TextButton(
          onPressed: () => print('press me'),
          child: Text('Forgot Password?', style: textFieldStyle),
        )),
      ],
    );
  }

  Widget _loginBtn() {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white10),
            ),
            child: Text('Login', style: textFieldStyle)));
  }

  Widget _otherLoginBtns() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SignInButton(
          Buttons.Google,
          text: "Sign up with Google",
          onPressed: () {},
        )
      ],
    );
  }

  Widget _signupBtn() {
    return Container(
        child: TextButton(
      onPressed: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpScreen()))
      },
      child: Text('Don\'t have an account? Sign up!', style: textFieldStyle),
    ));
  }
}
