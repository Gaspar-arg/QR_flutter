import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:qr_sqlite_maps/pages/pages.dart';
import 'package:qr_sqlite_maps/services/ui_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial'),
        actions: [
          IconButton(
              onPressed: (() {}), icon: const Icon(Icons.delete_forever_sharp))
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: const CustomBottonNavBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Obtener el selectedMenuOpt
    final providers = Provider.of<UiProvider>(context);
    final currentIndex = providers.selectedMenuOpt;

    switch (currentIndex) {
      case 0:
        return const MapasPage();

      case 1:
        return const DireccionesPage();

      default:
        return const MapasPage();
    }
  }
}
