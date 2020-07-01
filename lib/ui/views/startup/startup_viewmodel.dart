import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_app/app/locator.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:stacked_architecture_app/app/router.gr.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future navigateToHome() async {
    await _navigationService.navigateTo(Routes.homeViewRoute);
  }
}
