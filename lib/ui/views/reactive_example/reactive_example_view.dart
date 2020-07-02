import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_app/ui/smart_widgets/double_increase_counter/double_increase_counter.dart';
import 'package:stacked_architecture_app/ui/smart_widgets/single_increase_counter/single_increase_counter.dart';

import 'reactive_example_viewmodel.dart';

class ReactiveExampleView extends StatelessWidget {
  const ReactiveExampleView({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReactiveExampleViewModel>.nonReactive(
      builder: (context, model, child) {
        print('ReactiveExampleView built');
        return Scaffold(
            body: Center(
          child: Row(
            children: <Widget>[
              SingleIncreaseCounter(),
              SizedBox(width: 50),
              DoubleIncreaseCounter(),
            ],
          ),
        ));
      },
      viewModelBuilder: () => ReactiveExampleViewModel(),
    );
  }
}
