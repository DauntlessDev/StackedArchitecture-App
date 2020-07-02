import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'future_example_viewmodel.dart';

class FutureExampleView extends StatelessWidget {
  const FutureExampleView({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureExampleViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: model.isBusy
              ? CircularProgressIndicator()
              : Column(
                mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(model.data ?? 'NO_DATA'),
                    _ErrorMessage(),
                  ],
                ),
        ),
      ),
      viewModelBuilder: () => FutureExampleViewModel(),
    );
  }
}

class _ErrorMessage extends ViewModelWidget<FutureExampleViewModel> {
  const _ErrorMessage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, FutureExampleViewModel model) {
    return model.hasError
        ? Text(
            model.error.message,
            style: TextStyle(color: Colors.red),
          )
        : Container();
  }
}
