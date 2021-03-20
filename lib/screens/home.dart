import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_project/Widget/regions.dart';
import 'package:flutter_redux_project/actions/actions.dart';
import 'package:flutter_redux_project/reducers/AppReducer.dart';

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
          body: Container(
            color: Color(0xff141526),
            child:
                //  Stack(children: <Widget>[Calabria, Basilicata]
                Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: <Widget>[
                  Calabria,
                  Sicilia,
                  Basilicata,
                  ValleDAosta,
                  Umbria,
                  Toscana,
                  Molise,
                  Puglia,
                  Liguria,
                  Piemonte,
                  Sicilia,
                  Veneto,
                  Lombardia,
                  Campania,
                  Emilia,
                  Bolzano,
                  Marche,
                  Abbruzzo,
                  Trento,
                  Lazio,
                  Friuli
                ]),
                Text(
                  "Hi " + vm.state.name + "!",
                ),
                Text(
                  'You pushed the button ' +
                      vm.state.count.toString() +
                      ' times.',
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
            backgroundColor: Color(0xff1cbfff),
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
