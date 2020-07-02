import 'package:stacked/stacked.dart';

class StreamExampleViewModel extends StreamViewModel<int> {
  String get title => 'This is the time since epoch in sconds \n $data';

  bool _otherSource = false;

  @override
  Stream<int> get stream =>
      _otherSource ? epochUpdatesFaster() : epochUpdates();

  void swapSources() {
    _otherSource = !_otherSource;
    print(_otherSource.toString());
    notifySourceChanged();
  }

  Stream<int> epochUpdates() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  Stream<int> epochUpdatesFaster() async* {
    while (true) {
      await Future.delayed(const Duration(milliseconds: 200));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }
}
