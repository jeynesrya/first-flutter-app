import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue;
  String _passwordValue;
  bool _acceptTerms = false;

  Widget _buildEmailTextField() {
    return TextField(
      decoration: InputDecoration(labelText: 'Email'),
      keyboardType: TextInputType.emailAddress,
      onChanged: (String value) {
        setState(() {
          _emailValue = value;
        });
      },
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      decoration: InputDecoration(labelText: 'Password'),
      obscureText: true,
      onChanged: (String value) {
        setState(() {
          _passwordValue = value;
        });
      },
    );
  }

  Widget _buildAcceptSwitch() {
    return SwitchListTile(
      value: _acceptTerms,
      onChanged: (bool value) {
        setState(() {
          _acceptTerms = value;
        });
      },
      title: Text('Accept Terms'),
    );
  }

  void _submitForm() {
    print(_emailValue);
    print(_passwordValue);
    Navigator.pushReplacementNamed(context, '/products');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                children: <Widget>[
                  _buildEmailTextField(),
                  _buildPasswordTextField(),
                  SizedBox(
                    height: 10.0,
                  ),
                  _buildAcceptSwitch(),
                  RaisedButton(
                    color: Theme.of(context).primaryColor,
                    child: Text('Login'),
                    onPressed: _submitForm,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
