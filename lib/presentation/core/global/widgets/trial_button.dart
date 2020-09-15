import 'package:Cuisson/presentation/core/global/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrialButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CubitProvider.value(
      value: CubitProvider.of<ThemeCubit>(context),
      child: Container(
        width: 100,
        height: 50,
        child: RaisedButton(
          textColor: Colors.white,
          onPressed: () {
            debugPrint("button pressed");
            final themeCubit = context.bloc<ThemeCubit>();
            themeCubit.changeTheme();
          },
          child: Text('PRESS', style: Theme.of(context).textTheme.headline1),
        ),
      ),
    );
  }
}
