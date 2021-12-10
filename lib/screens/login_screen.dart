import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String _email;
  late String _password;

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalSpace),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Se Connecter', style: kLargeTitleStyle),
          Container(
            margin: EdgeInsets.only(top: kVerticalSpacer),
            padding: EdgeInsets.all(kHorizontalSpace),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: kBorderRadiusItem,
                boxShadow: kBoxShadowItem),
            child: Column(
              children: [
                TextField(
                  onChanged: (text) {
                    _email = text;
                  },
                  decoration: InputDecoration(
                    //contentPadding: EdgeInsets.all(16),
                    //isDense: true,
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.mail,
                      color: kMainTextColor,
                    ),
                    hintText: 'Adresse e-mail',
                    hintStyle: TextStyle(
                      fontSize: 17,
                      color: kMainTextColor,
                    ),
                  ),
                ),
                Divider(
                  height: kVerticalSpacer,
                  color: Colors.grey,
                ),
                TextField(
                  onChanged: (text) {
                    _password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    //contentPadding: EdgeInsets.all(16),
                    isDense: true,
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.password,
                      color: kMainTextColor,
                    ),
                    hintText: 'Mot de Passe',
                    hintStyle: TextStyle(
                      fontSize: 17,
                      color: kMainTextColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              if (_password != '' && _email != '') {
                try {
                  _auth.signInWithEmailAndPassword(
                      email: _email, password: _password);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                } on FirebaseAuthException catch (err) {
                  if (err.code == "user-not-found") {
                    _auth
                        .createUserWithEmailAndPassword(
                            email: _email, password: _password)
                        .then((user) {
                      user.user!.sendEmailVerification();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    });
                  }
                }
              }
            },
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: kHorizontalSpace,
                        vertical: kVerticalSpacer),
                    margin: EdgeInsets.only(top: kVerticalSpacer),
                    decoration: BoxDecoration(
                      borderRadius: kBorderRadiusItem,
                      boxShadow: kBoxShadowItem,
                      color: Colors.white,
                    ),
                    child: Text(
                      'Me connecter',
                      style: kTitleSection,
                      textAlign: TextAlign.center,
                    ),
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
