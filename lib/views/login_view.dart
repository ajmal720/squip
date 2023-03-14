import 'package:emergency_app/components/colors.dart';
import 'package:emergency_app/viewsmodel/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => LoginViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: Container(
              color: Colors.white,
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: Column(children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'LogIn To Your Account',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 9, vertical: 16),
                    child: Column(
                      children: [
                        TextFormField(
                            obscureText: false,
                            decoration: InputDecoration(
                                hintText: 'enter Your email',
                                //   labelText: 'Email',
                                suffixIcon: const Icon(
                                  Icons.email_rounded,
                                  color: Colors.black,
                                ),
                                filled: true,
                                fillColor:
                                    const Color.fromARGB(158, 246, 236, 236),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius:
                                        BorderRadius.circular(10.0)))),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                            obscureText: viewModel.isObsecure,
                            decoration: InputDecoration(
                                hintText: 'enter password',
                                suffixIcon: IconButton(
                                  color: Colors.black,
                                  icon: Icon(viewModel.isObsecure
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                  onPressed: () {
                                    viewModel.isObsecureText();
                                  },
                                ),
                                //   labelText: 'Email',
                                filled: true,
                                fillColor:
                                    const Color.fromARGB(158, 246, 236, 236),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius:
                                        BorderRadius.circular(10.0)))),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: blue,
                              minimumSize: Size(
                                  MediaQuery.of(context).size.width * 0.89, 55),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          onPressed: () {},
                          child: const Text('Sign In'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          child: Text(
                            'Forget the Password?',
                            style: TextStyle(
                                color: blue,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () => viewModel.navigateToForgetScreen(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 20,
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
                                  viewModel.navigateToSignup();
                                },
                                child: const Text('Sign Up')),
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          );
        });
  }
}
