import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:lab_3_flutter/screens/pastor_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3AB9C1),
        title: Text('Inicio'),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xffffffff),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black87,
                    width: 4,
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/salchicha.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Salchicha',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //Pastor Aleman
              Divider(
                thickness: 0.7,
                color: Colors.black87, 
              ),
              ListTile(
                leading: Icon(
                  MdiIcons.dog,
                  color: Color(0xff3AB9C1),
                ),
                title: Text('Pastor Aleman'),
                onTap: (){
                  _navegar(context, 'Pastor Aleman');
                },
              ),
              //Pug
              Divider(
                thickness: 0.7,
                color: Colors.black87, 
              ),
              ListTile(
                leading: Icon(
                  MdiIcons.dogService,
                  color: Color(0xff3AB9C1),
                ),
                title: Text('Pug'),
                onTap: (){
                  _navegar(context, 'Pug');
                },
              ),
              //Labrador
              Divider(
                thickness: 0.7,
                color: Colors.black87, 
              ),
              ListTile(
                leading: Icon(
                  MdiIcons.dogSide,
                  color: Color(0xff3AB9C1),
                ),
                title: Text('Labrador'),
                onTap: (){
                  _navegar(context, 'Labrador');
                },
              ),
              //Salir
              Divider(
                thickness: 0.7,
                color: Colors.black87, 
              ),
              ListTile(
                leading: Icon(
                  MdiIcons.cancel,
                  color: Color(0xff3AB9C1),
                ),
                title: Text('Salir'),
                onTap: (){
                  _navegar(context, 'Salir');
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff25AFB8),
              Colors.white,
            ],
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              MdiIcons.paw,
              size: 50,
            ),
            SizedBox(height: 30),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut at dapibus orci. Quisque nec mauris dolor. Sed est nibh, congue at augue sit amet, cursus volutpat elit. Nullam ut tortor feugiat, sodales neque non, tincidunt nibh. Nullam facilisis sapien sit amet luctus elementum. Class aptent taciti sociosqu ad litora torquent.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 200),
            Image.asset(
              'assets/images/perro.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
    void _navegar(BuildContext context, String screen){
    final Route= MaterialPageRoute(builder: (context){
      switch (screen){
        case 'Pastor Aleman':
          return PastorScreen();
        default:
          return HomeScreen();
      }
    });
    Navigator.push(context, Route);
  }
}