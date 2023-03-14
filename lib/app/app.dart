
import 'package:emergency_app/views/login_view.dart';
import 'package:emergency_app/views/start_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../views/forgetpass_view.dart';
import '../views/signup_view.dart';

@StackedApp(routes: [
  MaterialRoute(
    page: StartView,
    initial: true),
  MaterialRoute(
    page: LoginView),
  MaterialRoute(
    page: SignUpView), 
    MaterialRoute(
    page: SignUpView),
    MaterialRoute(page:
     ForgetPasswordView), 

  

],
dependencies: [
Singleton(classType:NavigationService)
])
class App {}