import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignupScreen extends StatelessWidget {
   SignupScreen({Key? key}) : super(key: key);
  GlobalKey<FormState> form =GlobalKey <FormState>();
  var userName = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold( resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body:
      Form(
        key:form,
        child:
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 80,horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xFF5C6BC0),
                    ),
                  ),
                ),
                Image.asset(
                  'asset/f06a488b809b53117557d1fb4edd4693.jpg'
                  ,height:230,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  validator: (String? value){
                    if(value!.isEmpty){
                      return 'User name is required';
                    }
                    return null;
                  },
                  controller: userName,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: ('UserName'),
                    prefixIcon: Icon(
                      Icons.account_circle_rounded,
                      color:  Color(0xFF5C6BC0),
                    ),
                  ),

                ),
                SizedBox(
                  height: 25.0,
                ),
                TextFormField(
                  validator: (String? value){
                    if(value!.isEmpty){
                      return 'Email is required';
                    }
                    return null;
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(20)),
                    labelText: ('Email'),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xFF5C6BC0),
                    ),
                  ),

                ),
                SizedBox(
                  height: 25.0,
                ),
                TextFormField(
                  validator: (String? value){
                    if(value!.length <6){
                      return 'Password is required';
                    }
                    return null;
                  },
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(20)),
                    labelText: ('Password'),
                    prefixIcon: Icon(
                      Icons.password,
                      color:  Color(0xFF5C6BC0),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 15,
                  thickness: 3,
                  color: Color(0xFF5C6BC0),
                  indent: 50.0,
                  endIndent: 50.0,
                ),
                SizedBox(
                  height: 17.0,
                ),
                Container(
                  width: 250.0,
                  height: 50.0,
                  child: MaterialButton(
                    onPressed: () {
                      if(form.currentState!.validate()){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()),);
                      }
                      print(userName.text);
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    color: Color(0xFF5C6BC0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
