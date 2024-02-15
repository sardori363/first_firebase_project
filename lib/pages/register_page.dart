import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  static const id = "login_page_id/";
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(50),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Center(
                  child: Image.asset('assets/Group 329.png'),
                ),
              ),
              const Text(
                "Logo",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 69, 75, 96)),
              ),
              const SizedBox(
                height: 56,
              ),
              const Text(
                "Register",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 69, 75, 96)),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                  "Enter your details to register",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 69, 75, 96)
                        ),
                    textAlign: TextAlign.center,
                  )),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 44,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                    hintText: "Name",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF454B60), width: 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 44,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                    hintText: "Email address",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF454B60), width: 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 44,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                    hintText: "Mobile Number",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF454B60), width: 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 44,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF454B60), width: 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 44,
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                    hintText: "Confim Password",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF454B60), width: 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                onPressed: () {},
                minWidth: double.infinity,
                height: 45,
                color: Color(0xFF454B60),
                child: Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Need help? Visit our"),
                  Text(" help center", style: TextStyle(fontWeight: FontWeight.w700),)
                ],
              )
            
            ],
          ),
        ),
      ),
    );
  }
}
