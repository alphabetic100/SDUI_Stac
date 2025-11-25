import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: "home_screen")
StacWidget homeScreen() {
  return StacScaffold(body: StacCenter(child: StacText(data: 'Hello, world!')));
}
