import 'package:flutter/material.dart';
import 'package:location_api_app/core/loctaion_services/location_services.dart';
import 'package:location_api_app/core/routes/magic_router.dart';
import 'package:location_api_app/features/home/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    getLocation();

    super.initState();
    print('start');
  }

  void getLocation() async {
    final position = await LocationServisec.getCurrentLocation();
    print(position.latitude);
    print(position.longitude);
    print('#' * 10);

    MagicRouter.navigateAndPopAll(HomeView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Icon(
          Icons.stream,
          size: 50,
        ),
      ),
    );
  }
}
