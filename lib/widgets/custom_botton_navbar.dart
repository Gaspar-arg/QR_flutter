import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/ui_provider.dart';
import '../themes/app_theme.dart';

class CustomBottonNavBar extends StatelessWidget {
  const CustomBottonNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providers = Provider.of<UiProvider>(context);
    final currentIndex = providers.selectedMenuOpt;

    return BottomNavigationBar(
        onTap: (int i) => providers.selectedMenuOpt = i,
        currentIndex: currentIndex,
        selectedItemColor: AppTheme.colorPrimario,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions), label: 'Direcciones'),
        ]);
  }
}
