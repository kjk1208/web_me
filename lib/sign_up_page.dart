import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldMessengerKey, // 이 부분을 추가
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            ElevatedButton(
              child: Text("Sign Up"),
              onPressed: () async {
                try {
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: _emailController.text,
                    password: _passwordController.text,
                  );
                  // 회원 가입 성공
                  final scaffoldMessenger =
                      _scaffoldMessengerKey.currentState!;
                  scaffoldMessenger.showSnackBar(
                    SnackBar(content: Text('Successfully signed up!')),
                  );
                  Navigator.pop(context); // 로그인 페이지로 돌아가기
                } catch (e) {
                  // 에러 처리
                  print(e);
                  final scaffoldMessenger =
                      _scaffoldMessengerKey.currentState!;
                  scaffoldMessenger.showSnackBar(
                    SnackBar(
                        content:
                            Text('Sign up failed. Please try again.')),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
