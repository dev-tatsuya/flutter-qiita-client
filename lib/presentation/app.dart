import 'package:flutter/material.dart';
import 'package:flutter_qiita_client/presentation/base/base_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Qiita Client',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const BasePage(),
    );
  }
}
