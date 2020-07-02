import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_app/ui/smart_widgets/Single_increase_counter/Single_increase_counter_viewmodel.dart';

class SingleIncreaseCounter extends StatelessWidget {
  const SingleIncreaseCounter({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SingleIncreaseCounterViewModel>.reactive(
      builder: (context, model, child) => GestureDetector(
        onTap: model.updateCounter,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.green,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Tap to increment counter', textAlign: TextAlign.center,),
              Text(model.counter.toString())
            ],
          ),
        ),
      ),
      viewModelBuilder: () => SingleIncreaseCounterViewModel(),
    );
  }
}
