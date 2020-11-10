import 'package:exercise/presentation/register.dart/register_presenter.dart';
import 'package:exercise/ui/pages/register/components/register_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';

import 'components/register_email.dart';

class RegisterPage extends StatefulWidget {
  final RegisterPresenter registerPresenter;
  RegisterPage(this.registerPresenter);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  ReactionDisposer disposer;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    ScrollController _controller = ScrollController();

    disposer =
        reaction((_) => widget.registerPresenter.isEmailValid, (isEmailValid) {
      if (isEmailValid) _controller.jumpTo(screenSize.width);
    });

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
      body: Container(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height,
              child: RegisterEmail(
                registerPresenter: widget.registerPresenter,
              ),
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height,
              child: RegisterPassword(
                registerPresenter: widget.registerPresenter,
              ),
            ),
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
                      onPressed: FocusScope.of(context).unfocus,
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
                      onPressed: widget.registerPresenter.validateEmail,
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

  @override
  void dispose() {
    disposer();
    super.dispose();
  }
}
