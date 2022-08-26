import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:submission/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}): super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _form = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmationPasswordController = TextEditingController();


  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _confirmationPasswordController.dispose();
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
                  'Register',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const SizedBox(height: 120.0),
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.email)
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
              TextFormField(
                controller: _confirmationPasswordController,
                decoration: const InputDecoration(
                    labelText: 'Confirmation password',
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
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
              }, child: const Text('Register'))
            ],
          ),
        )
      ),
        resizeToAvoidBottomInset: false
    );
  }
}