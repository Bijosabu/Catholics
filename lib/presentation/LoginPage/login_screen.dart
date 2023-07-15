import 'package:catholicsapp/presentation/widgets/main_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFCAF0FF),
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 140,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: size.width * 0.3,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 4))
                          ]),
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/catholicsIcon.png'),
                        radius: 80,
                        backgroundColor: Colors.white,
                      )),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: MainTextField(hintText: '   Phone number'),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[400],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 15)),
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('Dont have an account?'),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Login now'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
