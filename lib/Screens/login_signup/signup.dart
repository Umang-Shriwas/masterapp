import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:task1/Screens/login_signup/login.dart';

import '../homepage.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formkey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _fullName = TextEditingController();
  final _phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/signUp.png'), fit: BoxFit.cover)),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 35, top: 60),
                child: const Text('Create\nAccount',
                    style: TextStyle(color: Colors.white, fontSize: 33)),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.28,
                      right: 35,
                      left: 35),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _fullName,
                          validator: (value) =>
                              (value!.isEmpty) ? "Enter Your Name" : null,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              // focusedBorder: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(10),
                              //     borderSide:
                              //         const BorderSide(color: Colors.white)),
                              // enabledBorder: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(10),
                              //     borderSide:
                              //         const BorderSide(color: Colors.white)),
                              hintText: 'Enter Name',
                              // hintStyle: const TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: _phoneNumber,
                          validator: (value) => (value!.isEmpty)
                              ? "Enter Your Phone Number"
                              : null,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              // focusedBorder: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(10),
                              //     borderSide:
                              //         const BorderSide(color: Colors.white)),
                              // enabledBorder: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(10),
                              //     borderSide:
                              //         const BorderSide(color: Colors.white)),
                              hintText: 'Enter Phone Number',
                              // hintStyle: const TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          validator: (value) => EmailValidator.validate(value!)
                              ? null
                              : "Please enter valid email",
                          controller: _emailController,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              // focusedBorder: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(10),
                              //     borderSide:
                              //         const BorderSide(color: Colors.white)),
                              // enabledBorder: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(10),
                              //     borderSide:
                              //         const BorderSide(color: Colors.white)),
                              hintText: 'Enter Email',
                              // hintStyle: const TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          validator: (value) =>
                              value!.isEmpty ? "Enter some text" : null,
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              // focusedBorder: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(10),
                              //     borderSide:
                              //         const BorderSide(color: Colors.white)),
                              // enabledBorder: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(10),
                              //     borderSide:
                              //         const BorderSide(color: Colors.white)),
                              hintText: 'Enter Password',
                              // hintStyle: const TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Color(0xff4c505b),
                                  fontSize: 27,
                                  fontWeight: FontWeight.w700),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xff4c505b),
                              child: IconButton(
                                  color: Color(0xff4c505b),
                                  onPressed: () {
                                    if (_formkey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginScreen()));
                                      print('form is validated');
                                    } else {
                                      print('form is not validated');
                                    }
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
