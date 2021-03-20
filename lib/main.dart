import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_project/actions/actions.dart';
import 'package:flutter_redux_project/reducers/AppReducer.dart';
import 'package:flutter_redux_project/reducers/reducer.dart';
import 'package:flutter_redux_project/screens/home.dart';
import 'package:redux/redux.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';
import 'package:redux_remote_devtools/redux_remote_devtools.dart';

void main() async {
  // Create your store as a final variable in the main function or inside a
  // State object. This works better with Hot Reload than creating it directly
  // in the `build` function.
  var remoteDevtools = RemoteDevToolsMiddleware('localhost:8000');
  final store = DevToolsStore<AppState>(counterReducer,
      initialState: AppState.initial(),
      middleware: [
        remoteDevtools,
      ]);

  remoteDevtools.store = store;
  remoteDevtools.connect();

  runApp(FlutterReduxApp(
    store: store,
  ));

  store.dispatch(Startup());
}

class FlutterReduxApp extends StatelessWidget {
  final Store<AppState> store;

  FlutterReduxApp({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'RxDart Github Search',
          theme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.grey,
            // fontFamily: 'Gotham',
          ),
          home: SearchScreen()),
    );
  }
}
