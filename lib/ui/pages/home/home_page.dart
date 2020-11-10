import 'package:exercise/main/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  String message;

  HomePage() {
    if (Get.arguments != null) {
      message = Get.arguments;
    }
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    if (widget.message != null) {
      var warning = Container(
        height: 60,
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 165, 106, 1),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: ListTile(
          leading: Icon(
            Icons.check_circle_outline,
            color: Colors.white,
          ),
          title: Text(
            widget.message,
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
      Future.delayed(Duration(seconds: 0), () {
        Get.snackbar(
          null,
          null,
          messageText: warning,
          duration: Duration(seconds: 2),
          backgroundColor: Colors.transparent,
        );
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Color.fromRGBO(241, 239, 231, 1),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Column(
                    children: [
                      SizedBox(
                        height: constraints.maxHeight / 2,
                        width: constraints.maxWidth,
                        child: Image.asset(
                          'lib/ui/assets/frango.png',
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                      SizedBox(height: constraints.maxHeight / 5),
                      SizedBox(
                        height: constraints.maxHeight / 4,
                        child: Image.asset(
                          'lib/ui/assets/Logo-Olga.png',
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'VAMOS DE SALADA?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(147, 143, 133, 1),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Falta pouco para você matar sua',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'fome de Olga Ri ;)',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      Get.toNamed(Routes.REGISTER);
                    },
                    child: Text(
                      'ENTRAR',
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    color: Color.fromRGBO(249, 202, 7, 1),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Ou entre em com:',
                  style: TextStyle(fontSize: 12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 50,
                      icon: Image.asset(
                        'lib/ui/assets/google-icone.png',
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 50,
                      icon: Image.asset(
                        'lib/ui/assets/facebook-icone.png',
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 50,
                      icon: Image.asset(
                        'lib/ui/assets/apple-icone.png',
                      ),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
