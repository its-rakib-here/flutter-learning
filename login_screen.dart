import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formkey,
          child: ListView(
            padding: EdgeInsets.all(15.0),
            children: [
              SizedBox(height: 100),
              FlutterLogo(size: 100),
              SizedBox(height: 20,),
              Text("Login here ",textAlign: TextAlign.center,style:
              TextStyle(fontSize: 25.0),),
              SizedBox(height: 15,),

              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value==null || value.isEmpty)
                    {
                      return 'please enter your email';
                    }
                  else
                    return value;
                }
               ),
              SizedBox(height: 15,),

              TextFormField(
                controller: password,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
                  validator: (value){
                    if(value==null || value.isEmpty)
                    {
                      return 'please enter your email';
                    }
                    else
                      return value;
                  }
              ),

              SizedBox(height: 15,),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if(formkey.currentState!.validate());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.all(15.0),
                  ),

                  child: Text("Login"),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){},

                      child: Text("Forgot password")),
                ],
              ),

              Spacer(),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: (){},
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.all(15.0)
                    ),

                    child: Text("Don't have an account Register here")),
              )

            ],
          ),
        ),
      ),
    );
  }
}
