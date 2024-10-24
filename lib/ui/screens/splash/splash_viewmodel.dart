import 'dart:async';

// import 'package:mvvm_advanced/app/app.router.dart';
import 'package:mvvm_advanced/app/app.router.dart';
import 'package:mvvm_advanced/app/utils.dart';
import 'package:stacked/stacked.dart';

// import '../../../app/utils.dart';

class SplashViewModel extends BaseViewModel {
  Timer? _timer;

  void startTimer() async {
    _timer = Timer(const Duration(seconds: 3), () async {
      // if (hasUser) {
      //   //Navigate to login
      // } else {
      //   // Navigate to home
      navigationService.pushNamedAndRemoveUntil(
        Routes.homeView,
        arguments: HomeViewArguments(data: "Hi, I'm from splash"),
      );
      // }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
