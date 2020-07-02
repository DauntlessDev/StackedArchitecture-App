import 'package:stacked/stacked.dart';

class FutureExampleViewModel extends FutureViewModel<String> {
  Future<String> getDataFromServer() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('This server is broke, my man. :( ');
  }

  @override
  Future<String> futureToRun() {
    return getDataFromServer();
  }

}
