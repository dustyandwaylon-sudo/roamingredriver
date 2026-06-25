import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:roaming_red_river/app_state.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    FFAppState.reset();
    await FFAppState().initializePersistedState();
  });

  test('stores recent searches in most-recent-first order', () async {
    final appState = FFAppState();

    appState.addRecentSearch('Angel Arch');
    appState.addRecentSearch('Pinnacle Overlook');
    appState.addRecentSearch('Angel Arch');

    expect(appState.recentSearches, ['Angel Arch', 'Pinnacle Overlook']);
  });
}
