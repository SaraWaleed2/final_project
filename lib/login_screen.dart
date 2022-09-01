import 'package:final_project/home_screen.dart';
import 'package:final_project/sign_up.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  GlobalKey<FormState> form = GlobalKey<FormState>();

  @override
  var emailController =TextEditingController();
  var passwordController =TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset:true,
      body:Form (
        key: form,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 35.0),
          child: ListView(
            // color: Color(0xFF9575CD),
            children: [
              Center(
                child: Container(
                  height: 40,
                  child: Text(
                    'LogIn',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color:  Color(0xFF5C6BC0),
                    ),
                  ),
                ),
              ),
              Image.asset(
                'asset/login_image.jpg',
                height: 280,
                width: double.infinity,
                fit: BoxFit.fitHeight,
              ),
              TextFormField(
                validator: (String? value){
                  if(value!.isEmpty){
                    return 'User name is required';
                  }
                  return null;
                },
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: ' Your Email Address',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xFF5C6BC0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (String ? value){
                  if(value!.length<6){
                    return('Minimum Is 6 Characters');
                  }

                },
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: ' Your Password',
                  prefixIcon: Icon(
                    Icons.password,
                    color: Color(0xFF5C6BC0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Forget Password!',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0xFF5C6BC0),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: 180,
                child: MaterialButton(
                  onPressed: () {
                    if (form.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    }
                    print(emailController.text);
                    print(passwordController.text);
                  },
                  color: Color(0xFF5C6BC0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'SignIn',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account ?",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()),
                        );
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF5C6BC0),
                        ),
                      )),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
