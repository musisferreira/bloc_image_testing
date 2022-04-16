import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mult_blocprovider/bloc/app_bloc.dart';
import 'package:mult_blocprovider/bloc/app_state.dart';

void main() {
  blocTest<AppBloc, AppState>(
    'Initial state of the bloc should be empty',
    build: () => AppBloc(
      urls: [],
    ),
    verify: (appBloc) => expect(
      appBloc.state,
      const AppState.empty(),
    ),
  );
}
