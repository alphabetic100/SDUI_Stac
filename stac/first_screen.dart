import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'first_screen')
StacWidget firstScreen() {
  return StacScaffold(
    body: StacColumn(
      mainAxisAlignment: StacMainAxisAlignment.center,
      children: [
        StacCenter(child: StacText(data: 'First Screen')),
        StacSizedBox(height: 30),
        StacElevatedButton(
          onPressed: StacAction.fromJson({
            "actionType": "navigate",
            "widgetJson": {
              "type": "scaffold",
              "appBar": {
                "type": "appBar",
                "title": {"type": "text", "data": "My App"},
              },
              "body": {
                "type": "center",
                "child": {"type": "text", "data": "Hello, World!"},
              },
            },
            "navigationStyle": "push",
          }),
          child: StacText(data: 'Tap'),
        ),
      ],
    ),
  );
}
