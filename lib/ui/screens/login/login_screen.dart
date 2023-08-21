import 'package:flutter/material.dart';
import 'package:mlmapp/ui/screens/login/loginForm/sponsor_form.dart';

import 'loginForm/user_form.dart';

enum LoginType { sponsor, user }

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  LoginType loginType = LoginType.sponsor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(0, 150, 0, 0),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'User Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    radius: 40,
                    child: ClipOval(
                      child: Image.asset('assets/images/George_Jones.jpg'),
                    ),
                  ),
                ),
                Text(
                  "You have been missed for a long time",
                  style: TextStyle(
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Radio(
                          value: LoginType.sponsor,
                          groupValue: loginType,
                          onChanged: (LoginType? value) {
                            setState(() {
                              loginType = value!;
                            });
                          },
                        ),
                        title: const Text(
                          "Sponsor ID",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: Radio(
                          value: LoginType.user,
                          groupValue: loginType,
                          onChanged: (LoginType? value) {
                            setState(() {
                              loginType = value!;
                            });
                          },
                        ),
                        title: const Text(
                          "New User",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: loginType == LoginType.sponsor ? const SponsorForm() : const UserForm(),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Don't Have an account!!",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      style: const ButtonStyle(),
                      child: const Text(
                        'Register',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
