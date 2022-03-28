import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location_api_app/core/dio_helper/dio_helper.dart';
import 'package:location_api_app/core/loctaion_services/location_services.dart';
import 'package:location_api_app/core/models/weather.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInit());

  static HomeCubit of(context) => BlocProvider.of(context);
  Weather? weather;
  Future<void> getCurrentWeather() async {
    emit(HomeLoading());
    try {
      final respone = await DioHelper.get(
          'lat=${LocationServisec.currentPosition!.latitude}&lon=${LocationServisec.currentPosition!.longitude}');
      weather = Weather.fromJson(respone.data);
      print(respone.data);
      print(weather!.coord!.lat.toString());
    } catch (e) {
      print(e);
    }
    emit(HomeInit());
    // print(respone.data);
  }
}
