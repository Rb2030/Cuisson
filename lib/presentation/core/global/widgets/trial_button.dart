import 'package:Cuisson/presentation/core/global/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrialButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThemeCubit, ThemeState>(
        listener: (context, ThemeState state) {},
        builder: (context, state) {
          return Container(
            width: 100,
            height: 50,
            child: RaisedButton(
              color: Colors.yellow,
              textColor: Colors.white,
              onPressed: () {
                debugPrint("button pressed");
                final themeCubit = context.bloc<ThemeCubit>();
                themeCubit.changeTheme();
              },
              child: const Text('PRESS'),
            ),
          );
        });
  }
}
