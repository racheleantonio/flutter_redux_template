import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:project_kobe_client/actions.dart';
import 'package:project_kobe_client/redux_state.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomeScreenViewModel>(
      converter: (store) {
        return HomeScreenViewModel(
          state: store.state,
          onTextChanged: (amount) => store.dispatch(Increment(amount)),
          onNameChanged: (name) => store.dispatch(ChangeName(name)),
        );
      },
      builder: (BuildContext context, HomeScreenViewModel vm) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hi " + vm.state.name + "!",
                ),
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  vm.state.count.toString(),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Insert your name...',
                  ),
                  onChanged: vm.onNameChanged,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => vm.onTextChanged(3),
          ),
        );
      },
    );
  }
}

class HomeScreenViewModel {
  final AppState state;
  final void Function(int amount) onTextChanged;
  final void Function(String name) onNameChanged;
  HomeScreenViewModel({this.state, this.onTextChanged, this.onNameChanged});
}
