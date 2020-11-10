import 'package:exercise/main/factories/page/register/register_presenter_factory.dart';
import 'package:exercise/presentation/register.dart/register_presenter.dart';
import 'package:exercise/ui/pages/register/register_page.dart';
import 'package:flutter/cupertino.dart';

Widget makeRegisterPage() {
  final RegisterPresenter presenter = makeRegisterPresenter();
  return RegisterPage(presenter);
}