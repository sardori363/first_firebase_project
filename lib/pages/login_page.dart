import 'package:flutter/material.dart';
import 'package:flutter_firebase/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  static const id = "login_page_id/";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool enteredWrongDetails = true;

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
              Text(
                "Logo",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 69, 75, 96)),
              ),
              SizedBox(
                height: 56,
              ),
              Text(
                "Login",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 69, 75, 96)),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    enteredWrongDetails? "Enter your email and password to login" : "Invalid username and / or password Please try again",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: enteredWrongDetails ? Color.fromARGB(255, 69, 75, 96): Colors.red
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
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF454B60), width: 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("Forgot email?")],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 44,
                child: TextField(
                  controller: passwordController,
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("Forgot password?")],
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                onPressed: () {
                  // setState(() {
                  //   enteredWrongDetails = !enteredWrongDetails;
                  // });
                },
                minWidth: double.infinity,
                height: 45,
                color: Color(0xFF454B60),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Or login in with"),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      print("sm");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Color(0xFF454B60),
                      ),borderRadius: BorderRadius.circular(10)),
                      width: 142,
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/google (1).png'),
                          Text(
                            "Google",
                            style: TextStyle(
                                color: Color(0xFF454B60),
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 5,)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      print("sm");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                   color: Color(0xFF454B60),
                      ),
                      width: 142,
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/facebook (1).png'),
                          Text(
                            "Facebook",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 5,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (c)=> const RegisterPage()));
                    },
                      child: const Text(" Register", style: TextStyle(fontWeight: FontWeight.w700),),
                  )
                ],
              ),
               SizedBox(
                height: 40,
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
