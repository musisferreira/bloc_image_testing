import 'package:async/async.dart' show StreamGroup;

extension StarWith<T> on Stream<T> {
  Stream<T> startWith(T value) => StreamGroup.merge(
        [
          this,
          Stream<T>.value(value),
        ],
      );
}
