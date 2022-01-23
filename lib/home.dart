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
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "I am rich",
          style: Theme.of(context).textTheme.bodyText2,
        ),
        elevation: 0,
        actions: const [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Image.asset("assets/images/diamond.png"),
        ),
      ),
    );
  }
}
