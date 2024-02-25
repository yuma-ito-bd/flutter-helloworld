import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _flag = false;

  _click() async {
    setState(() {
      _flag = !_flag;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text(
            "Display Large",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Display Medium",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text(
            "Display Small",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Text(
            "Headline Large",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            "Headline Medium",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            "Headline Small",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            "Title Large",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            "Title Medium",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            "Title Small",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            "Label Large",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Text(
            "Label Medium",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Text(
            "Label Small",
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            "Body Large",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            "Body Medium",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            "Body Small",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _click,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
