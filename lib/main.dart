import 'package:bloc_counter/counter_bloc.dart';
import 'package:bloc_counter/counterscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocCounter());
}

class BlocCounter extends StatelessWidget {
  const BlocCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=> CounterBloc(),
      child: const MaterialApp(
        title: 'Bloc Counter',
        home: CounterScreen(),
      ),
    );
  }
}
