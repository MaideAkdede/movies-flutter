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

  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final _loginFormEmailFieldKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Se Connecter', style: kLargeTitleStyle),
          Container(
            margin: const EdgeInsets.only(top: kVerticalSpacer * 3),
            padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalSpace, vertical: kVerticalSpacer),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: kBorderRadiusItem,
                boxShadow: kBoxShadowItem),
            child: Form(
              key: _loginFormKey,
              child: Column(
                children: [
                  TextFormField(
                    key: _loginFormEmailFieldKey,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'L’adresse mail est obligatoire.';
                      }
                      return null;
                    },
                    onChanged: (text) {
                      _email = text;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.mail,
                        color: kMainTextColor,
                      ),
                      isDense: true,
                      hintText: 'Adresse e-mail',
                      hintStyle: TextStyle(
                        fontSize: 17,
                        color: kMainTextColor,
                      ),
                    ),
                  ),
                  Divider(
                    color: kMainTextColor,
                    height: kVerticalSpacer * 2,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Le mot de passe est obligatoire.';
                      }
                      if (value.length < 9) {
                        return 'Le mot de passe doit être supérieur à 9 caractères';
                      }
                      return null;
                    },
                    onChanged: (text) {
                      _password = text;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.password,
                        color: kMainTextColor,
                      ),
                      isDense: true,
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
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: kVerticalSpacer),
                  child: ElevatedButton(
                    onPressed: () {
                      print('Gesture Tap');
                      if (_loginFormKey.currentState!.validate()) {
                        // Process data.
                      }
                    },
                    style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
                      borderRadius: kBorderRadiusItem,
                    ),),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'Me connecter',
                        style: kTitleSection,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
