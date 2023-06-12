import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isSuccess = false; // 회원가입 성공 여부를 판단하는 변수

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: _isSuccess
          ? _buildSuccessScreen(context)
          : _buildSignUpScreen(context),
    );
  }

  Widget _buildSignUpScreen(BuildContext context) {
    return Padding(
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
                // 회원 가입 성공, 상태 업데이트
                setState(() {
                  _isSuccess = true;
                });
              } catch (e) {
                // 에러 처리
                if (e is FirebaseAuthException && e.message?.contains('email-already-in-use') == true) {
                  // 이메일이 이미 사용 중인 경우
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Error"),
                      content: Text("이메일이 이미 존재합니다. 다른 아이디를 입력해주세요."),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                } else {
                  // 기타 에러 처리
                  print("Error: $e");  // 로그로 에러 메시지 출력
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Sign up failed. Please try again.')),
                  );
                }
              }
            },
          )
        ],
      ),
    );
  }

  Widget _buildSuccessScreen(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '축하합니다! 회원가입되었습니다.',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('로그인 페이지로 돌아가기'),
            onPressed: () {
              Navigator.pop(context); // 로그인 페이지로 이동
            },
          ),
        ],
      ),
    );
  }
}
