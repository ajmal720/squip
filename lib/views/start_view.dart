import 'package:emergency_app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../components/colors.dart';
import '../viewsmodel/startviewmodel.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder:()=> StartViewModel(), builder: (context, viewModel, child)
    {return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
             Container(
              
                  alignment: Alignment.topCenter,
                  child: Image.asset('assets/images/logo.png',),
                ),
                const SizedBox(
                  height: 20,
                ),
               
                    const Text(
                  "Let's You in",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                  const SizedBox(
                  height: 49,
                ),
                MyButton(bColor: blue
                , bText: "Login With Google", ), 
                 const SizedBox(
                  height: 20,
                ),
               
                MyButton(bColor: blue, bText: 'Connect with Facebook'),
                  Padding(
                  padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
                  child: Row(children: const <Widget>[
                    Expanded(
                        child: Divider(
                      height: 0.2,
                      color: Colors.grey,
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    Text("or"),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Divider(
                      height: 0.2,
                      color: Colors.grey,
                    )),
                  ]),
                ),
                 const SizedBox(
                      height: 20,
                    ),
                    
                  ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: blue,
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.89, 55),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {
                   viewModel.navigateToLogin();
                      
                  },
                  child:  const Text('Sign In with Password'),
                ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () {
                            },
                        child: const Text('Sign Up')),
                  ],
                )
            
               
              
            
               
          ],

        ),
      ),
    );});
  }
}