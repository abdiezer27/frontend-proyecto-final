import 'package:flutter/material.dart';
import 'package:teslo_shop/features/shared/shared.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer: SideMenu(scaffoldKey: scaffoldKey),
      // Cambia el color de fondo del Scaffold
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        // Cambia el color de fondo del AppBar
        backgroundColor: Colors.blueGrey,
        title: const Text('Products', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            // Cambia el color del ícono de búsqueda
            icon: const Icon(Icons.search_rounded, color: Colors.white),
          )
        ],
      ),
      body: const _ProductsView(),
      floatingActionButton: FloatingActionButton.extended(
        // Cambia el color de fondo del FloatingActionButton
        backgroundColor: Colors.blueGrey,
        // Cambia el color del texto del FloatingActionButton
        label:
            const Text('Nuevo producto', style: TextStyle(color: Colors.white)),
        // Cambia el color del ícono del FloatingActionButton
        icon: const Icon(Icons.add, color: Colors.white),
        onPressed: () {},
      ),
    );
  }
}

class _ProductsView extends StatelessWidget {
  const _ProductsView();

  @override
  Widget build(BuildContext context) {
    // Cambia el color del texto en el cuerpo de la vista
    return const Center(
      child: Text(
        'Eres genial!',
        style: TextStyle(color: Colors.blueGrey, fontSize: 24),
      ),
    );
  }
}
