import 'package:flutter/material.dart';
import 'package:flutter_rev/signup_screen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: mainScreen()
    );
  }
}

class mainScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(   /// Wraped the Column inside SingleChildScrollView to put everything in the middle of the screen
            child: Column(                /// Then we wraped the SingleChildScrollView with the Center
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Cursive",

                    ),
                  ),
                ),

                SizedBox(
                  height: 40,
                ),      /// Empty Space

                TextFormField(        /// Text Field of the E-mail Address
                  keyboardType: TextInputType.emailAddress,     /// type of the keyboard that will be used in typing E-mail Address
                  onFieldSubmitted: (value) {             /// activates the method , when finishing typing
                    print(value);
                  },

                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                      labelText: 'Email Address',
                      prefixIcon: Icon(
                        Icons.email,
                      ),

                      border: OutlineInputBorder()    /// Puts the Text Field inside a beautiful box
                  ),
                ),      /// Email Input TextField

                SizedBox(
                  height: 15,
                ),

                TextFormField(        /// Password Input Text Field
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,    /// Hides password

                  onFieldSubmitted: (value) {
                    print(value);
                  },

                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),

                      suffixIcon: Icon(     /// Icon at the end of the Password Text Field
                          Icons.remove_red_eye
                      ),

                      border: OutlineInputBorder()
                  ),
                ),    /// Password Input TextField

                SizedBox(
                  height: 20,
                ),

                Container(
                  width: double.infinity,     /// Gives width to the Button
                  color: Colors.blue,
                  height: 40,
                  child: MaterialButton(
                    onPressed: (){
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),        /// Login Button

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,      /// Centers the Text
                  children: [

                    Text(
                        'Don\'t have an account? '
                    ),

                    TextButton(
                      onPressed: (){
                        Navigator.push(      /// Moving from one screen to another
                            context,        /// The screen that I am in now
                            MaterialPageRoute(
                              builder: (context) => signupScreen(
                              ),    /// The Screen that I want to go to
                            ));
                      },
                      child: Text(
                          'Register Now'
                      ),
                    ),

                  ],
                ),


              ],


            ),
          ),
        ),
      ),
    );
  }
}