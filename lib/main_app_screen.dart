import 'package:atmaja_flutter_demo/router/app_router.dart';
import 'package:flutter/material.dart';

class MainAppScreen extends StatelessWidget {
  const MainAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: AppRouter.generateRoute(),
      initialRoute: AppRouter.HOME);
}
