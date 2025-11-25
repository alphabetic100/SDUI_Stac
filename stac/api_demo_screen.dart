import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: "api_demo_screen")
StacWidget apiDemoScreen() {
  return StacScaffold(
    backgroundColor: "#FFFFFF",
    appBar: StacAppBar(
      backgroundColor: "#FFFFFF",
      title: StacText(data: "API Demo", style: StacTextStyle(color: "#000000")),
    ),
    body: StacCenter(
      child: StacColumn(
        mainAxisAlignment: StacMainAxisAlignment.center,
        crossAxisAlignment: StacCrossAxisAlignment.center,
        children: [
          StacElevatedButton(
            onPressed: StacAction.fromJson({
              "actionType": "networkRequest",
              "url": "https://jsonplaceholder.typicode.com/posts",
              "method": "get",
              "results": [
                {
                  "statusCode": 200,
                  "action": {
                    "actionType": "showSnackBar",
                    "content": {
                      "type": "text",
                      "data": "Posts fetched successfully!",
                    },
                  },
                },
              ],
            }),
            child: StacText(data: "GET Posts"),
          ),
          const StacSizedBox(height: 20),
          StacElevatedButton(
            onPressed: StacAction.fromJson({
              "actionType": "networkRequest",
              "url": "https://jsonplaceholder.typicode.com/posts",
              "method": "post",
              "body": {"title": "foo", "body": "bar", "userId": 1},
              "results": [
                {
                  "statusCode": 201,
                  "action": {
                    "actionType": "showSnackBar",
                    "content": {
                      "type": "text",
                      "data": "Post created successfully!",
                    },
                  },
                },
              ],
            }),
            child: StacText(data: "POST Post"),
          ),
        ],
      ),
    ),
  );
}
