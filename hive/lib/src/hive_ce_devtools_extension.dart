part of 'hive_impl.dart';

const String _eventPrefix = 'hive_ce.';

/// A typedef for the post event function.
@visibleForTesting
typedef PostEvent = void Function(
  String eventKind,
  Map<String, Object?> eventData,
);

/// A helper class that provides data to the DevTools extension.
///
/// It is only visible for testing and eval.
@visibleForTesting
class HiveDevToolsExtension {
  /// The default constructor for [HiveDevToolsExtension].
  ///
  /// Accepts an optional [PostEvent] that should only be overwritten when testing.
  const HiveDevToolsExtension([
    this._postEvent = developer.postEvent,
  ]);

  final PostEvent _postEvent;

  /// Requests all legacy and async keys and post an event with the result.
  Future<void> boxNames() async {
    final boxNames = (Hive as HiveImpl)._boxes.keys.toList();
    print('$boxNames');

    _postEvent(
      '${_eventPrefix}boxNames',
      {'boxNames': boxNames},
    );
  }
}
