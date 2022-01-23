import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:i_am_rich/provider/theme_provider.dart';
import 'package:provider/provider.dart';


class ChangeThemeButtonWidget extends StatelessWidget {
  const ChangeThemeButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Row(
      children: [
        Icon(FeatherIcons.sun, color: Theme.of(context).primaryColor,),
        Switch.adaptive(
          value: themeProvider.isDarkMode,
          onChanged: (value){
            final provider = Provider.of<ThemeProvider>(context, listen: false);
            provider.toggleTheme(value);
          },
        ),
        Icon(FeatherIcons.moon, color: Theme.of(context).primaryColor,),
      ],
    );
  }
}
