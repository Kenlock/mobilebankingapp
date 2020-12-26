import 'package:flutter/material.dart';
import 'package:mobilebanking/business_logic/models/general_response.dart';
import 'package:mobilebanking/services/auth/auth_service.dart';
import 'package:mobilebanking/services/service_locator.dart';
import 'package:mobilebanking/ui/widgets/MyIcon.dart';
import 'package:mobilebanking/utils/urls.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthService authService;

  TextEditingController _usernameController;
  TextEditingController _passwordController;
  bool rememberMe;
  @override
  void initState() {
    authService = serviceLocator.get<AuthService>();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    setState(() {
      rememberMe = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _buildLoginPage(context),
    ));
  }

  Widget _buildLoginPage(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/bg.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white12),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    Container(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          'assets/images/logo.jpg',
                          height: 60,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    _buildQuickServices(),
                    SizedBox(height: 20),
                    _buildLoginForm(context),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _buildQuickServices() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Quick Services',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                MyIcon(
                  textLabel: 'Contact Us',
                  iconUrl: 'assets/icons/call.svg',
                  onClick: () {
                    _handleIconClick();
                  },
                ),
                MyIcon(
                  textLabel: 'FAQ',
                  iconUrl: 'assets/icons/info.svg',
                  onClick: () {
                    _handleIconClick();
                  },
                ),
                MyIcon(
                  textLabel: 'Find ATM',
                  iconUrl: 'assets/icons/atm.svg',
                  onClick: () {
                    _handleIconClick();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    return Material(
        elevation: 1,
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                    labelText: 'Username',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.teal,
                    )),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                enableSuggestions: false,
                autocorrect: false,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
              CheckboxListTile(
                title: Text('Remember Me'),
                value: rememberMe,
                onChanged: (newValue) {
                  print(newValue);
                  setState(() {
                    rememberMe = newValue;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: ButtonTheme(
                      minWidth: 30,
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        onPressed: () {
                          _submitLogin();
                        },
                        child: Text(
                          'SIGN IN',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {},
                      child: Icon(
                        Icons.fingerprint,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Text('Forgot Password',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    onTap: () {
                      print('Forgot Password');
                    },
                  ),
                  GestureDetector(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    onTap: () {
                      print('Sign up');
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }

  void _submitLogin() async {
    Map<String, dynamic> data = {
      'username': _usernameController.text,
      'password': _passwordController.text
    };
    print('login data: $data');
    GeneralResponse response;
    try {
      response = await authService.login(data);
      if(response.errCode == 0) {
        
      }
    } catch (e) {
      print(e);
    }

    //Navigator.pushNamed(context, HOME_ROUTE);
  }

  void _handleIconClick() {
    print('handle click!');
  }
}
