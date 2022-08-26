import 'package:flutter/material.dart';
import 'package:submission/home.dart';
import 'package:submission/register.dart';
import 'package:email_validator/email_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}): super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _form = GlobalKey<FormState>();

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _form,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              Center(
                child: Text(
                  'Submission App',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const SizedBox(height: 120.0),
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.mail)
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Can\'t be empty';
                  }
                  if (!EmailValidator.validate(text)) {
                    return 'Email is invalid';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12.0),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.password)
                ),
                keyboardType: TextInputType.visiblePassword,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Can\'t be empty';
                  }
                  if (text.length <4) {
                    return 'Too short';
                  }
                  return null;
                },
                obscureText: true,
              ),
              const SizedBox(height: 12.0),
              ElevatedButton(onPressed: () {
                final isValid = _form.currentState?.validate();
                if (isValid == null || !isValid) {
                  return;
                }
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage()));
              },
                style: ElevatedButton.styleFrom(
                    elevation: 8.0,
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    )
                ), child: const Text('LOGIN'),),
              const SizedBox(height: 12.0),
              Center(
                  child: Row(
                    children: <Widget>[
                      const Text('Does\'nt have account yet? '),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => RegisterPage()));
                          },
                          child: Text('Register')
                      )
                    ],
                  )
              )
            ],
          ),
        ),
      ),
        resizeToAvoidBottomInset: false
    );
  }
}