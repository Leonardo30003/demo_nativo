import 'package:flutter/material.dart';
import 'package:demo_nativo/WelcomePage .dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loja Turismo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Descubre Loja'),
    );
  }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> imgList = [
    'https://th.bing.com/th/id/OIP.TFDl-sqBAklJIeZtmHAfsAHaFj?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.iDSEp5xxxtclfickpZPY_gHaJ4?pid=ImgDet&w=474&h=632&rs=1',
    'https://th.bing.com/th/id/OIP.CqPLuQC64GzPrtDXxb1DdwHaFj?pid=ImgDet&w=474&h=355&rs=1',
    'https://th.bing.com/th/id/OIP.cr6J1uG5I3s1NeR4UvM7DAHaFj?pid=ImgDet&w=474&h=355&rs=1',
    'https://th.bing.com/th/id/OIP.qeI--fonQSXCScQ4N7oNqwHaGH?pid=ImgDet&w=474&h=391&rs=1',
  ];

  final PageController _controller = PageController(
    viewportFraction: 0.8,
    keepPage: true,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: imgList.length,
                itemBuilder: (BuildContext context, int itemIndex) {
                  return Container(
                    height: 200,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.network(
                      imgList[itemIndex],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            // Otros widgets pueden ir aquí
          ],
        ),
      ),
      // Botón flotante y otros widgets pueden ir aquí
    );
  }
}