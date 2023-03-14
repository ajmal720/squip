import 'package:emergency_app/app/app.router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';
import '../components/utils.dart';

class EmailService {
final navigationService =locator<NavigationService>();
  
  bool loading = false ;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final auth =FirebaseAuth.instance ;

  loginWithEmail(){
auth.signInWithEmailAndPassword(email: emailController.text,
 password: passwordController.text.toString()).then((value){
      Utils().toastMessage(value.user!.email.toString());
      navigationService.navigateToStartView();
  }).onError((error, stackTrace) {
debugPrint(error.toString());
Utils().toastMessage(error.toString());
  });
}
}