import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

Future<void> _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se pudo abrir $url';
  }
}
  // Este es el contenido en el proyecto para la vista en un nuevo proyecto en pantalla en el programa .
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 212, 170, 184),
          title: Center(
            child: const Text('PERFIL  KARLA '),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [const Color.fromARGB(255, 221, 141, 181), const Color.fromARGB(255, 185, 124, 175)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.5, 0.9],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.red.shade300,
                        minRadius: 35.0,
                        child: Icon(
                          Icons.call,
                          size: 30.0,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        minRadius: 60.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              NetworkImage('assets/images/karla.jpg'),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.red.shade300,
                        minRadius: 35.0,
                        child: Icon(
                          Icons.message,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'KARLA AZUCENA VAZQUEZ LARA ',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Telefono',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 190, 168, 183),
                      child: ListTile(
                        title: Text(
                          '4131016197',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),   
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 175, 100, 153),
                      child: ListTile(
                        title: Text(
                          'Solo se puede visualizar pero puro texto con los datos al momento dar click te aroja en solicitud',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
  // El Inkwell es un widget que se define para manejar los toques 
                    subtitle: InkWell(
                      child: Text( 'Azucena29.laraa@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.pinkAccent,
                        decoration: TextDecoration.underline, 
                      ),
                      ),
                    onTap: () => _launchURL('mailto:Azucena29.laraa@gmail.com'),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'GitHub',
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: InkWell(
                      child: Text( " https://github.com/azucenavazquez29",                  
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.pinkAccent,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                     onTap: () => _launchURL("https://github.com/azucenavazquez29"),
                    ),
                  ),
// El divider es un widget que se divide en vertical las columnas 
                  Divider(),
                  ListTile(
                    title: Text(
                      'Facebook',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 199, 156, 181),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: InkWell(
                      child: Text( 'https://www.facebook.com/profile.php?id=100010114720293', 
                      style: TextStyle(
                        fontSize: 18,
                         color: Colors.pinkAccent,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                   onTap: () => _launchURL('https://www.facebook.com/profile.php?id=100010114720293'),
                  ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
