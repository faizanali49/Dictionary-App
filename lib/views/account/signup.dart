import 'package:dictionaryapp/services/routes/routesconstants.dart';
import 'package:dictionaryapp/themes/styles.dart';
import 'package:dictionaryapp/views/account/widgets/TextField.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 120,
                width: 120,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(68, 72, 116, 239),
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                ),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.25,
                  bottom: 20,
                ),
                // height: MediaQuery.of(context).size.height * 0.45,
                // color: Customcolors.primary,
                child: Image.asset(
                  'assets/images/dic-logo.png',
                  fit: BoxFit.fitHeight,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ),
              Text(
                'Create an account to Dictionary App',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Please enter your credentials below',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),

              SizedBox(height: 20),
              CustomTextfield(
                labelText: 'Enter your Email',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Customcolors.primary,
                ),
                suffixIcon: Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                ),
              ),
              CustomTextfield(
                labelText: 'Password',
                obscureText: true,
                prefixIcon: Icon(
                  Icons.password_sharp,
                  color: Customcolors.primary,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.green,
                ),
              ),
              CustomTextfield(
                labelText: 'Re-enter Password',
                obscureText: true,
                prefixIcon: Icon(
                  Icons.password_sharp,
                  color: Customcolors.primary,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Customcolors.primary,
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  GoRouter.of(context).goNamed(RoutesConstants.homepage);
                  
                  print('Sign up button pressed');
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'or',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 131, 131, 131),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'click here if you create an account already',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 131, 131, 131),
                    fontSize: 12,
                  ),
                  children: [
                    TextSpan(
                      text: ' Sign in',
                      style: TextStyle(
                        color: Customcolors.primary,
                        fontWeight: FontWeight.bold,
                      ),

                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.pushNamed(RoutesConstants.signin);
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
