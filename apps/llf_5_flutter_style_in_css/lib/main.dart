import 'package:flutter/material.dart';
import 'package:llf_5_flutter_style_in_css/screens/decorations_screen.dart';
import 'package:llf_5_flutter_style_in_css/screens/images_screen.dart';
import 'package:llf_5_flutter_style_in_css/screens/layout_center_screen.dart';
import 'package:llf_5_flutter_style_in_css/screens/layout_column_screen.dart';
import 'package:llf_5_flutter_style_in_css/screens/layout_row_screen.dart';
import 'package:llf_5_flutter_style_in_css/screens/text_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'layout-column-example': (ctx) => const LayoutColumnExample(),
        'layout-row-example': (ctx) => const LayoutRowExample(),
        'layout-center-example': (ctx) => const LayoutCenterExample(),
        'text-example': (ctx) => const TextScreen(),
        'images-example': (ctx) => const ImagesScreen(),
        'decorations-example': (ctx) => const DecorationsScreen(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LLF #5'),
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return ListView(
                padding: const EdgeInsets.only(top: 8),
                children: [
                  ListTile(
                    title: const Text('Layout Column Example'),
                    onTap: () {
                      Navigator.of(context).pushNamed('layout-column-example');
                    },
                    trailing: const Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    title: const Text('Layout Row Example'),
                    onTap: () {
                      Navigator.of(context).pushNamed('layout-row-example');
                    },
                    trailing: const Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    title: const Text('Layout Center Example'),
                    onTap: () {
                      Navigator.of(context).pushNamed('layout-center-example');
                    },
                    trailing: const Icon(Icons.chevron_right),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Text Example'),
                    onTap: () {
                      Navigator.of(context).pushNamed('text-example');
                    },
                    trailing: const Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    title: const Text('Images Example'),
                    onTap: () {
                      Navigator.of(context).pushNamed('images-example');
                    },
                    trailing: const Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    title: const Text('Decorations Example'),
                    onTap: () {
                      Navigator.of(context).pushNamed('decorations-example');
                    },
                    trailing: const Icon(Icons.chevron_right),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
