import 'package:emergency_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class LoginViewModel extends BaseViewModel {
bool isObsecure =true;
final navigationService =locator<NavigationService>();
  
 isObsecureText(){
  
   isObsecure = !isObsecure;
  rebuildUi();
 } 
 navigateToSignup(){
navigationService.navigateToSignUpView();
 }
 navigateToForgetScreen(){
navigationService.navigateToForgetPasswordView();
 }
}