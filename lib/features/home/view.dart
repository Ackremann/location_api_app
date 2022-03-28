import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location_api_app/features/home/bloc/home_bloc.dart';
import 'package:location_api_app/widget/loading_indicator.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => HomeCubit()..getCurrentWeather(),
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: BlocBuilder<HomeCubit, HomeStates>(
            builder: (context, state) {
              // final cubit = HomeCubit.of(context);
              // final weather = cubit.weather;

              return state is HomeLoading
                  ? const LoadingIndicator()
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('data'),
                      ],
                    );
            },
          ),
        ),
      ),
    );
  }
}
