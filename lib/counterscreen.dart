import 'package:bloc_counter/counter_bloc.dart';
import 'package:bloc_counter/counter_events.dart';
import 'package:bloc_counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterBloc, CounterStates>(builder: (context, state) {
        return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text('You have pressed the button this many times'),
          SizedBox(
            height: 10,
          ),
          Text(state.counter.toString()),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(Increment());
                  },
                  child: Text('Increment')),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(Decrement());
                  },
                  child: Text('Decrement'))
            ],
          ),
        ]);
      }),
    );
  }
}
