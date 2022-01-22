import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i_am_rich/home.dart';
import 'package:i_am_rich/provider/theme_provider.dart';
import 'package:provider/provider.dart';


// The main function is the starting point for all our flutter apps.
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const Munikiran());
}

class Munikiran extends StatelessWidget {
  const Munikiran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      builder: (context, _){
        final themeProvider = Provider.of<ThemeProvider>(context);
       return MaterialApp(
         debugShowCheckedModeBanner: false,
         title: 'I am Rich',
         themeMode: themeProvider.themeMode,
         theme: MyThemes.lightTheme,
         darkTheme: MyThemes.darkTheme,
         home: const Home(),
       );
      }
    );
  }
}
