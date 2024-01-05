import 'package:flutter/material.dart';
import 'package:demo_nativo/main.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenidos a Loja'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Descubre Loja',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Image.network(
              'https://image.isu.pub/170608150737-89f6320c754090a9a295c492324e4e4e/jpg/page_1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Descubre Loja')),
              );
            },
            child: const Text('Ingresar'),
          ),
        ],
      ),
    );
  }
}
