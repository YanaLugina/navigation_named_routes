import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Routing and navigation',),
          centerTitle: true,
        ),
        body: _HomePage(),
      ),
      initialRoute: '/',
      routes: {
        '/page2': (context) => _Page2(),
      }
    );
  }
}

class _HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/page2');
          },
          child: Text('Move to page 2')
      ),
    );
  }
}

Route _myRoute() {
  return MaterialPageRoute(
      builder: (context) => _Page2()
  );
}

class _Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
