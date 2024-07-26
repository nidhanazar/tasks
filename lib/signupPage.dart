import 'package:flutter/material.dart';

class Signuppage extends StatelessWidget {
  const Signuppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Sign up',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Create your account',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pinkAccent,
                prefixIcon: Icon(Icons.person),
                hintText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pinkAccent,
                prefixIcon: Icon(Icons.email),
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pinkAccent,
                prefixIcon: Icon(Icons.password),
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink[50],
                prefixIcon: Icon(Icons.password),
                hintText: 'Confirm Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              'Or',
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 18,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: OutlinedButton(
                  onPressed: (){

                  },
                  child: Text('Sign in with google account',
                    style: TextStyle(
                      color: Colors.purple
                    ),
                  ),
                  style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.purple)),
                ),
              ),
            ),



            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?',
                textAlign: TextAlign.center,),

                TextButton(
                    onPressed: (){

                    },
                    child: Text('Login',
                    style: TextStyle(
                      color: Colors.purple
                    ),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
