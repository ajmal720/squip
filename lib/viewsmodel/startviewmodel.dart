
// ignore_for_file: file_names

import '../app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class StartViewModel extends BaseViewModel {
  final navigationService =locator<NavigationService>();
  

  navigateToLogin(){
    navigationService.navigateToLoginView();
  }
}