import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'second_screen')
StacWidget secondScreen() {
  return StacScaffold(body: StacCenter(child: StacText(data: 'Second Screen')));
}
