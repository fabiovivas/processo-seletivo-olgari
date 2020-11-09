import 'package:exercise/presentation/home_presenter.dart';
import 'package:exercise/ui/pages/home/home_presenter.dart';
import 'package:flutter/material.dart';

import 'package:exercise/ui/pages/home/home_page.dart';

Widget makeHomePage() {
  final IHomePresenter homePresenter = HomePresenter();
  return HomePage(homePresenter);
}
