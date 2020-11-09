import 'package:exercise/ui/pages/register/register_presenter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  final IRegisterPresenter registerPresenter;
  RegisterPage(this.registerPresenter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(221, 216, 194, 1),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 37, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  TextSpan(text: 'Para começar '),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'qual o seu ',
                  ),
                  TextSpan(
                    text: 'e-mail?',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            TextField(decoration: InputDecoration(hintText: 'Digite aqui'))
          ],
        ),
      ),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
        child: BottomAppBar(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 65,
                    child: RaisedButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                      },
                      child: Text(
                        'CANCELAR',
                        style: TextStyle(color: Colors.black),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Colors.white,
                      elevation: 1,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 65,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'PRÓXIMO',
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(249, 202, 7, 1),
                      elevation: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
