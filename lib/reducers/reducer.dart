import '../actions/actions.dart';
import 'AppReducer.dart';

AppState counterReducer(AppState state, dynamic action) {
  if (action is Startup) {
    return state;
  }
  if (action is Increment) {
    return state.copyWith(count: state.count + action.payload);
  }
  if (action is Increment) {
    return state.copyWith(count: state.count + action.payload);
  }
  if (action is ChangeName) {
    return state.copyWith(name: action.payload);
  }
  return state;
}
