abstract class ControllerInterface {
  /// Use it on useEffect with HookConsumerWidget.
  ///   useEffect(() {
  ///    ref.read(homeAccountPageViewModelProvider).initState();
  ///     return ref.read(homeAccountPageViewModelProvider).dispose;
  ///  }, []); [] is for variable change detection
  Future<void> initState() async {}

  /// Use it on useEffect with HookConsumerWidget.
  ///   useEffect(() {
  ///    ref.read(homeAccountPageViewModelProvider).initState();
  ///     return ref.read(homeAccountPageViewModelProvider).dispose;
  ///  }, []);
  void dispose() {}
}
