import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: "user_management_screen")
StacWidget userManagementScreen() {
  return StacScaffold(
    backgroundColor: "#FFFFFF",
    appBar: StacAppBar(
      backgroundColor: "#FFFFFF",
      title: StacText(
        data: "User Management",
        style: StacTextStyle(color: "#000000", fontWeight: StacFontWeight.bold),
      ),
    ),
    body: StacSingleChildScrollView(
      child: StacPadding(
        padding: const StacEdgeInsets.all(16),
        child: StacColumn(
          crossAxisAlignment: StacCrossAxisAlignment.stretch,
          children: [
            // Header
            StacText(
              data: "Dynamic User List",
              style: StacTextStyle(
                fontSize: 24,
                fontWeight: StacFontWeight.bold,
                color: "#1F1F1F",
              ),
            ),
            const StacSizedBox(height: 8),
            StacText(
              data: "Fetches real users from JSONPlaceholder API with loading states",
              style: StacTextStyle(
                fontSize: 14,
                color: "#757575",
              ),
            ),
            const StacSizedBox(height: 24),

            // Dynamic View for User List
            StacDynamicView.fromJson({
              "request": {
                "url": "https://jsonplaceholder.typicode.com/users",
                "method": "get",
              },
              "loaderWidget": {
                "type": "center",
                "child": {
                  "type": "column",
                  "mainAxisAlignment": "center",
                  "children": [
                    {
                      "type": "circularProgressIndicator",
                      "color": "#0056D2",
                      "strokeWidth": 4,
                    },
                    {
                      "type": "sizedBox",
                      "height": 16,
                    },
                    {
                      "type": "text",
                      "data": "Loading users...",
                      "style": {
                        "fontSize": 16,
                        "color": "#757575",
                      },
                    },
                  ],
                },
              },
              "errorWidget": {
                "type": "center",
                "child": {
                  "type": "container",
                  "padding": 24,
                  "decoration": {
                    "color": "#FFEBEE",
                    "borderRadius": {
                      "topLeft": 12,
                      "topRight": 12,
                      "bottomLeft": 12,
                      "bottomRight": 12,
                    },
                  },
                  "child": {
                    "type": "column",
                    "mainAxisSize": "min",
                    "children": [
                      {
                        "type": "icon",
                        "icon": "error",
                        "color": "#C62828",
                        "size": 48,
                      },
                      {
                        "type": "sizedBox",
                        "height": 16,
                      },
                      {
                        "type": "text",
                        "data": "Failed to load users",
                        "style": {
                          "fontSize": 18,
                          "fontWeight": "bold",
                          "color": "#C62828",
                        },
                      },
                    ],
                  },
                },
              },
              "template": {
                "type": "listView",
                "shrinkWrap": true,
                "physics": "never",
                "itemTemplate": {
                  "type": "container",
                  "margin": {"bottom": 12},
                  "decoration": {
                    "color": "#FAFAFA",
                    "borderRadius": {
                      "topLeft": 12,
                      "topRight": 12,
                      "bottomLeft": 12,
                      "bottomRight": 12,
                    },
                    "border": {
                      "color": "#E0E0E0",
                      "width": 1,
                    },
                  },
                  "padding": 16,
                  "child": {
                    "type": "row",
                    "crossAxisAlignment": "start",
                    "children": [
                      {
                        "type": "container",
                        "width": 50,
                        "height": 50,
                        "decoration": {
                          "color": "#0056D2",
                          "borderRadius": {
                            "topLeft": 25,
                            "topRight": 25,
                            "bottomLeft": 25,
                            "bottomRight": 25,
                          },
                        },
                        "child": {
                          "type": "center",
                          "child": {
                            "type": "text",
                            "data": "{{id}}",
                            "style": {
                              "color": "#FFFFFF",
                              "fontSize": 18,
                              "fontWeight": "bold",
                            },
                          },
                        },
                      },
                      {
                        "type": "sizedBox",
                        "width": 16,
                      },
                      {
                        "type": "expanded",
                        "child": {
                          "type": "column",
                          "crossAxisAlignment": "start",
                          "children": [
                            {
                              "type": "text",
                              "data": "{{name}}",
                              "style": {
                                "fontSize": 16,
                                "fontWeight": "bold",
                                "color": "#1F1F1F",
                              },
                            },
                            {
                              "type": "sizedBox",
                              "height": 6,
                            },
                            {
                              "type": "row",
                              "children": [
                                {
                                  "type": "icon",
                                  "icon": "email",
                                  "color": "#757575",
                                  "size": 14,
                                },
                                {
                                  "type": "sizedBox",
                                  "width": 6,
                                },
                                {
                                  "type": "expanded",
                                  "child": {
                                    "type": "text",
                                    "data": "{{email}}",
                                    "style": {
                                      "fontSize": 13,
                                      "color": "#757575",
                                    },
                                    "overflow": "ellipsis",
                                  },
                                },
                              ],
                            },
                            {
                              "type": "sizedBox",
                              "height": 4,
                            },
                            {
                              "type": "row",
                              "children": [
                                {
                                  "type": "icon",
                                  "icon": "phone",
                                  "color": "#757575",
                                  "size": 14,
                                },
                                {
                                  "type": "sizedBox",
                                  "width": 6,
                                },
                                {
                                  "type": "text",
                                  "data": "{{phone}}",
                                  "style": {
                                    "fontSize": 13,
                                    "color": "#757575",
                                  },
                                },
                              ],
                            },
                          ],
                        },
                      },
                    ],
                  },
                },
              },
            }),

            const StacSizedBox(height: 24),

            // Information Box
            StacContainer(
              padding: const StacEdgeInsets.all(16),
              decoration: StacBoxDecoration(
                color: "#E8F5E9",
                borderRadius: StacBorderRadius.circular(8),
                border: StacBorder.all(color: "#4CAF50", width: 2),
              ),
              child: StacColumn(
                crossAxisAlignment: StacCrossAxisAlignment.start,
                children: [
                  StacRow(
                    children: [
                      StacIcon(icon: "check_circle", color: "#2E7D32", size: 20),
                      const StacSizedBox(width: 8),
                      StacText(
                        data: "Dynamic State Management",
                        style: StacTextStyle(
                          fontWeight: StacFontWeight.bold,
                          color: "#2E7D32",
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const StacSizedBox(height: 8),
                  StacText(
                    data: "✅ Loading states with CircularProgressIndicator\n✅ Error handling with custom error widgets\n✅ Dynamic data rendering with {{placeholders}}\n✅ Real API data from JSONPlaceholder\n✅ List rendering with itemTemplate\n✅ State changes automatically during fetch",
                    style: StacTextStyle(
                      fontSize: 13,
                      color: "#2E7D32",
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
