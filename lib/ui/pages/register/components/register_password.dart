import 'package:exercise/main/routes.dart';
import 'package:exercise/presentation/register.dart/register_presenter.dart';
import 'package:exercise/ui/pages/register/components/bottom_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';

class RegisterPassword extends StatelessWidget {
  final RegisterPresenter registerPresenter;
  const RegisterPassword({
    Key key,
    @required this.registerPresenter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 37, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Observer(builder: (_) {
            return RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  TextSpan(text: 'Olá, ${registerPresenter.email} :)'),
                ],
              ),
            );
          }),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Agora, insira sua ',
                ),
                TextSpan(
                  text: 'senha',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Digite aqui',
            ),
            onChanged: registerPresenter.setPassword,
            obscureText: true,
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    final screenSize = MediaQuery.of(context).size;
                    return Container(
                      height: screenSize.width / 1.5,
                      color: Color(0xFF737373),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(25.0),
                            topRight: const Radius.circular(25.0),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(22, 20, 22, 5),
                              child: Text(
                                'VAMOS REDEFINIR SUA SENHA',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(147, 143, 133, 1),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(22, 5, 22, 0),
                                  child: Text(
                                    'Iremos te enviar as instruções de redefinição',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(33, 37, 41, 1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(22, 0, 22, 10),
                                  child: Text(
                                    'de senha para o e-mail abaixo, ok?',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(33, 37, 41, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 10, 20, 20),
                              child: Observer(builder: (_) {
                                return Text(
                                  registerPresenter.email,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(33, 37, 41, 1),
                                  ),
                                );
                              }),
                            ),
                            BottomOptions(
                              firstLabel: 'CANCELAR',
                              firstButtom: () {
                                Get.back();
                              },
                              lastLabel: 'ENVIAR',
                              lastButtom: () {
                                Get.offAllNamed(Routes.HOME, arguments: 'Te enviamos um e-mail ;)');
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: Text(
              'Esqueci minha senha',
              style: TextStyle(
                fontSize: 14,
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    );
  }
}
