import 'package:flutter/material.dart';
import 'package:hello_world/my_home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Forest System Login')),
      body: const Center(
        child: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String name = '';
  TextEditingController controller = new TextEditingController();

  void click() {
    this.name = controller.text;
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyHomePage(this.name)));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
              controller: this.controller,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  labelText: 'Type Your Name:',
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black,
                    width: 5,
                  )),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.done),
                    splashColor: Colors.blue,
                    tooltip: 'Submit Name',
                    onPressed: this.click,
                  ))),
        ));
  }
}
