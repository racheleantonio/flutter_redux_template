import 'package:project_kobe_client/redux_state.dart';
import 'actions.dart';

AppState counterReducer(AppState state, dynamic action) {
  if (action is Increment) {
    return state.copyWith(count: state.count + action.payload);
  }

  return state;
}
