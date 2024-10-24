import 'package:flutter/material.dart';
import 'package:mvvm_advanced/ui/screens/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewmodel>.reactive(
      onViewModelReady: (viewModel) {}, // similar to init satate
      onDispose: (viewModel) {},

      builder: (context, viewModel, child) => Scaffold(
        body: Center(
          child: Text(
            data,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.8,
            ),
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewmodel(),
    );
  }
}
