import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description     xxxx 
///@author          Alex.Ling
///@create          2022-10-31 20:11

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  ///
  final accountController = TextEditingController();

  ///
  final pwdController = TextEditingController();

  /// accountKey
  final GlobalKey<FormState> accountKey = GlobalKey<FormState>();

  /// pwdKey
  final GlobalKey<FormState> pwdKey = GlobalKey<FormState>();

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: loginBody(),
      resizeToAvoidBottomInset: false,
    );
  }

  ///
  Widget loginBody() {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: const Text(
                  "Welcome \nLogin",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Form(
                key: accountKey,
                  child: TextFormField(
                    autofocus: false,
                    autocorrect: false,
                    controller: accountController,
                    keyboardType: TextInputType.emailAddress,
                    enabled: true,
                    style: const TextStyle(
                      color: Colors.white
                    ),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      filled: true,
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 1
                        )
                      ),
                      prefixIcon: const Icon(Icons.account_circle, color: Colors.white,),
                      labelText: "Email/Phone number",
                      labelStyle: const TextStyle(
                        fontSize: 15,
                        color: Colors.white
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1
                          )
                      ),

                    ),
                  )
              ),
              const SizedBox(
                height: 38,
              ),
              Form(
                  key: pwdKey,
                  child: TextFormField(
                    autofocus: false,
                    autocorrect: false,
                    controller: pwdController,
                    keyboardType: TextInputType.emailAddress,
                    enabled: true,
                    obscureText: isObscure,
                    style: const TextStyle(
                        color: Colors.white
                    ),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      filled: true,
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1
                          )
                      ),
                      prefixIcon: const Icon(Icons.lock, color: Colors.white,),
                      suffixIcon: IconButton(
                        icon: Icon(isObscure ? Icons.visibility_off
                        : Icons.visibility),
                        color: Colors.white,
                        onPressed: (){
                          setState((){
                            isObscure = !isObscure;
                          });
                        },
                      ),
                      labelText: "Password",
                      labelStyle: const TextStyle(
                          fontSize: 15,
                          color: Colors.white
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1
                          )
                      ),

                    ),
                  )
              ),
              const SizedBox(
                height: 40,
              ),
              FlatButton(
                minWidth: double.infinity,
                  shape: const StadiumBorder(),
                  color: Colors.white,
                  height: 52,
                  onPressed: (){
                    ///TODO
                  },
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold,color: Colors.black),
                  )),
              const SizedBox(
                height: 30,
              ),
              FlatButton(
                  minWidth: double.infinity,
                  shape: const StadiumBorder(),
                  // color: Colors.white,
                  height: 52,
                  onPressed: (){
                    ///TODO
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                  ))
            ],
          ),
        )
    );
  }
}
