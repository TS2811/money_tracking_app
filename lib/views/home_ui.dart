// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:money_tracking_app/models/user.dart';

class HomeUi extends StatefulWidget {
  User? user;
  HomeUi({
    this.user,
    super.key,
  });

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
