import 'package:flutter/material.dart';
import 'package:i_am_rich/provider/theme_provider.dart';
import 'package:i_am_rich/widget/change_theme_button_widget.dart';
import 'package:provider/provider.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Provider.of<ThemeProvider>(context).themeMode;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (color == ThemeMode.dark) ? Colors.white : Colors.grey.shade900,
        title:  Text(
          "I am rich",
          style: TextStyle(
            color: (color == ThemeMode.dark) ? Colors.grey.shade900 : Colors.white,
          ),
        ),
        actions: const [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: const SafeArea(
        child: Center(
          child: Text("Munikiran"),
        ),
      ),
    );
  }
}
