import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_app/app/locator.dart';
import 'package:stacked_architecture_app/services/counter_service.dart';

class SingleIncreaseCounterViewModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();
  int get counter => _counterService.counter;


  void updateCounter() {
    _counterService.incrementCounter();
    notifyListeners();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];
}
