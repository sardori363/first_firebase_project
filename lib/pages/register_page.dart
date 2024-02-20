import 'package:flutter/material.dart';
import 'package:flutter_firebase/services/auth_service.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterPage extends StatefulWidget {
  static const id = "login_page_id/";
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool wrongEmail = true;
  String wrongEmailText = '';
  bool wrongNumber = true;
  String wrongNumberText = '';
  bool wrongPassword = true;
  String wrongPasswordText = '';
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
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
                        color: Color.fromARGB(255, 69, 75, 96)),
                    textAlign: TextAlign.center,
                  )),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 44,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                    labelText: "Name",
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
                    labelText: "Email address",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: wrongEmail
                                ? Color.fromARGB(255, 69, 75, 96)
                                : Colors.red,
                            width: 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    wrongEmail ? "" : wrongEmailText,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: wrongEmail
                            ? Color.fromARGB(255, 69, 75, 96)
                            : Colors.red),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 44,
                child: IntlPhoneField(
                  focusNode: focusNode,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF454B60), width: 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  languageCode: "en",
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.name);
                  },
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
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: wrongEmail
                                ? Color.fromARGB(255, 69, 75, 96)
                                : Colors.red,
                            width: 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    wrongPassword ? "" : wrongPasswordText,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: wrongPassword
                            ? Color.fromARGB(255, 69, 75, 96)
                            : Colors.red),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                onPressed: () async {
                  String? response = await AuthService.registerUser(context,
                      fullName: nameController.text.trim().toString(),
                      email: emailController.text.trim().toString(),
                      password: passwordController.text);
                      print("axxx");
                      print(response);

                  if (response ==
                      "[firebase_auth/email-already-in-use] The email address is already in use by another account.") {
                    wrongEmail = false;
                    print("AAAAAAAAAAAAAAAAaaaaaaaaaaaaaa");
                    wrongEmailText = 'Email address already taken';
                    setState(() {});
                  }
                  if (response ==
                      "[firebase_auth/unknown] An unknown error occurred: FirebaseError: Firebase: The email address is badly formatted. (auth/invalid-email).") {
                    wrongEmail = false;
                    wrongEmailText = 'Invalid email address';
                    setState(() {});
                  }
                  if (response ==
                      "[firebase_auth/unknown] An unknown error occurred: FirebaseError: Firebase: Error (auth/missing-email).") {
                    wrongEmail = false;
                    wrongEmailText = 'Please enter your email address';
                    setState(() {});
                  }
                  if (response ==
                      "[firebase_auth/unknown] An unknown error occurred: FirebaseError: Firebase: A non-empty password must be provided (auth/missing-password).") {
                    wrongPassword = false;
                    wrongPasswordText =
                        'Must be 8 or more characters  and contain at least 1 number or special character';
                    setState(() {});
                  }
                },
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
                  Text(
                    " help center",
                    style: TextStyle(fontWeight: FontWeight.w700),
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
