import 'package:flutter/material.dart';
import 'package:mozzarella_pizza/models/orden.dart';
import 'package:mozzarella_pizza/screens/pages/pedir.dart';
import 'package:mozzarella_pizza/screens/pages/productos.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _adomicilio = true;
  bool _enlocal = false;
  List<Orden> ordenes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 220, 38, 38),
        title: const Text(
          'Mozzarella Pizza',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        leading: const Icon(Icons.local_pizza, color: Colors.white),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        if (_adomicilio == true) {
                          _enlocal = true;
                          _adomicilio = false;
                        } else {
                          _enlocal = false;
                          _adomicilio = true;
                        }
                        print("A domicilio: $_adomicilio");
                        print("En local: $_enlocal");
                      }),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: _adomicilio == true
                              ? Colors.white
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: _adomicilio == true
                              ? [
                                  const BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ]
                              : [],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.local_shipping_outlined,
                              size: 18,
                              color: _adomicilio == true
                                  ? Colors.red.shade600
                                  : Colors.grey.shade600,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'A Domicilio',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: _adomicilio == true
                                    ? Colors.red.shade600
                                    : Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        if (_enlocal == true) {
                          _enlocal = false;
                          _adomicilio = true;
                        } else {
                          _enlocal = true;
                          _adomicilio = false;
                        }
                        print("A domicilio: $_adomicilio");
                        print("En local: $_enlocal");
                      }),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: _enlocal == true
                              ? Colors.white
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: _enlocal == true
                              ? [
                                  const BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ]
                              : [],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.storefront_outlined,
                              size: 18,
                              color: _enlocal == true
                                  ? Colors.red.shade600
                                  : Colors.grey.shade600,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'En Local',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: _enlocal == true
                                    ? Colors.red.shade600
                                    : Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //xpanded(child: _pages[_selectedIndex]),
          const Spacer(),

          FloatingActionButton.extended(
            onPressed: () {




            },
            heroTag: 'Ordenes',
            label: const Text('Ordenar'),
            backgroundColor: const Color.fromARGB(255, 220, 38, 38),
            foregroundColor: Colors.white,
            icon: const Icon(Icons.receipt_rounded),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
