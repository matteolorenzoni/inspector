import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _passwordVisible = true;

  void login() {
    print(_usernameController.text);
    print(_passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: const Text("Login"),
      // ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 6, child: Image.asset('assets/images/logo.png')),
            Expanded(
                flex: 4,
                child: Wrap(
                    alignment: WrapAlignment.center,
                    runSpacing: 10,
                    children: [
                      SizedBox(
                        child: TextField(
                            controller: _usernameController,
                            style: const TextStyle(color: Colors.orangeAccent),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Username',
                              labelStyle: TextStyle(color: Colors.orange),
                              // suffixIcon: IconButton(
                              //   onPressed: () => _usernameController.clear(),
                              //   icon: const Icon(Icons.clear),
                              // ),
                            )),
                      ),
                      SizedBox(
                        child: TextField(
                            controller: _passwordController,
                            obscureText: _passwordVisible,
                            style: const TextStyle(color: Colors.orangeAccent),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.orange),
                              // suffixIcon: Row(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceBetween,
                              //   mainAxisSize: MainAxisSize.min,
                              //   children: [
                              //     IconButton(
                              //       onPressed: () =>
                              //           _passwordController.clear(),
                              //       icon: const Icon(Icons.clear),
                              //     )
                              //   ],
                              // )
                            )),
                      ),
                      MaterialButton(
                        onPressed: login,
                        color: Colors.orangeAccent,
                        height: 50,
                        minWidth: double.infinity,
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      )
                    ])),
          ],
        ),
      ),
    );
  }
}
