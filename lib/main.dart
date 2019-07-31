import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'blocs/input_bloc.dart';
import 'input_page.dart';
import 'result_page.dart';
import 'theme.dart';

void main() => runApp(BMIApp());

class BMIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<InputBloc>.value(
          value: InputBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: kAppTheme,
        routes: {
          '/': (context) => InputPage(),
          '/result': (context) => ResultPage(),
          '/home': (context) => InputPage()
        },
      ),
    );
  }
}
