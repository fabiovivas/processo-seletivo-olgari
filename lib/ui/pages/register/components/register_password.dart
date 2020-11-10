import 'package:exercise/presentation/register.dart/register_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

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
        ],
      ),
    );
  }
}
