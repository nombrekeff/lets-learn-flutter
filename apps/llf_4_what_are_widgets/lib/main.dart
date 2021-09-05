import 'package:flutter/material.dart';
import 'package:llf_4_what_are_widgets/screens/complete_example_screen.dart';
import 'package:llf_4_what_are_widgets/screens/custom_widgets_screen.dart';
import 'package:llf_4_what_are_widgets/screens/initial_example_screen.dart';
import 'package:llf_4_what_are_widgets/screens/interactive_widget_screen.dart';
import 'package:llf_4_what_are_widgets/screens/structural_widget_screen.dart';

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
        'initial-example': (ctx) => const InitialExampleScreen(),
        'interactive-example': (ctx) => const InteractiveWidgetScreen(),
        'structural-example': (ctx) => const StructuralWidgetScreen(),
        'complete-example': (ctx) => const CompleteExampleScreen(),
        'custom-example': (ctx) => const CustomWidgetScreen(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LLF #4'),
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return ListView(
                padding: const EdgeInsets.only(top: 8),
                children: [
                  ListTile(
                    title: const Text('Initial Example'),
                    onTap: () {
                      Navigator.of(context).pushNamed('initial-example');
                    },
                    trailing: const Icon(Icons.chevron_right),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Complete Example'),
                    onTap: () {
                      Navigator.of(context).pushNamed('complete-example');
                    },
                    trailing: const Icon(Icons.chevron_right),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Interactive Widget'),
                    onTap: () {
                      Navigator.of(context).pushNamed('interactive-example');
                    },
                    trailing: const Icon(Icons.chevron_right),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Structural Widget'),
                    onTap: () {
                      Navigator.of(context).pushNamed('structural-example');
                    },
                    trailing: const Icon(Icons.chevron_right),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Custom Widget'),
                    onTap: () {
                      Navigator.of(context).pushNamed('custom-example');
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
