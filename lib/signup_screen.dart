import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signupScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign up !",
                  style: TextStyle(
                    fontSize: 60,
                    fontFamily: "Cursive",
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: 'Full name',
                      prefixIcon: Icon(
                        Icons.account_box_outlined,
                      ),

                      border: OutlineInputBorder()    /// Puts the Text Field inside a beautiful box
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email',  
                      prefixIcon: Icon(         
                        Icons.alternate_email_sharp,
                      ),

                      border: OutlineInputBorder()    
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',  
                      prefixIcon: Icon(        
                        Icons.lock,
                      ),

                      border: OutlineInputBorder()    
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Confirm Password',  
                      prefixIcon: Icon(         
                        Icons.lock,
                      ),

                      border: OutlineInputBorder()    
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,     /// Gives width to the Button
                  color: Colors.blue,
                  height: 40,
                  child: MaterialButton(
                    onPressed: () { },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                      ),
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
