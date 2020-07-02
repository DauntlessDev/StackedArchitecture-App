import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_app/ui/views/partial_builds/partial_builds_viewmodel.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class PartialBuildsView extends StatelessWidget {
  const PartialBuildsView({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
      builder: (context, model, child) {
        print('PartialBuildsView built');
        return Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _StringForm(),
              _TitleAndValue(),
            ],
          ),
        );
      },
      viewModelBuilder: () => PartialBuildsViewModel(),
    );
  }
}

class _StringForm extends HookViewModelWidget<PartialBuildsViewModel> {
  _StringForm({
    Key key,
  }) : super(key: key, reactive: false);
  @override
  Widget buildViewModelWidget(
      BuildContext context, PartialBuildsViewModel model) {
    print('_StringForm built');
    var text = useTextEditingController();
    return TextField(
      controller: text,
      onChanged: model.updateString,
    );
  }
}

class _TitleAndValue extends ViewModelWidget<PartialBuildsViewModel> {
  _TitleAndValue({
    Key key,
  }) : super(key: key, reactive: true);
  @override
  Widget build(BuildContext context, PartialBuildsViewModel model) {
    print('_TextAndValue built');
    return Column(
      children: <Widget>[
        Text(
          model.title ?? '',
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
