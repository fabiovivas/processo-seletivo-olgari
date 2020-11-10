import 'package:exercise/presentation/register/register_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class RegisterEmail extends StatelessWidget {
  final RegisterPresenter registerPresenter;
  const RegisterEmail({
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
          Observer(builder: (_) {
            return TextField(
              decoration: InputDecoration(
                  hintText: 'Digite aqui',
                  errorText: registerPresenter.emailError == null
                      ? null
                      : registerPresenter.emailError,
                  suffixIcon: registerPresenter.emailError == null
                      ? null
                      : Icon(
                          Icons.error,
                          color: Color.fromRGBO(255, 95, 0, 1),
                        )),
              keyboardType: TextInputType.emailAddress,
              onChanged: registerPresenter.setEmail,
            );
          })
        ],
      ),
    );
  }
}
