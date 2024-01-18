import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  // TODO: http request on authrization, and localhost callback monitering to get the 'access_token'
  void login() async {
    /**
    'https://login.microsoftonline.com/common/oauth2/v2.0/authorize'
            '?client_id=YOUR_CLIENT_ID'
            '&response_type=code'
            '&redirect_uri=YOUR_REDIRECT_URI'
            '&scope=openid+offline_access+User.Read'
    */
    final loginURL = Uri.parse('https://www.google.com');

    if (await canLaunchUrl(loginURL)) {
      await launchUrl(loginURL);
    } else {
      throw 'Could not launch $loginURL';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Logo
              Image.asset(
                'lib/images/todo_rainbow.icns',
                width: 148,
              ),

              //Slogan
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  'Todo app, but\n only in the Menubar.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              // Login button
              TextButton(
                onPressed: login,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.grey.shade600,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14))),
                child: IntrinsicWidth(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Login with ',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                      Image.asset(
                        'lib/images/icons8-microsoft-48.png',
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
