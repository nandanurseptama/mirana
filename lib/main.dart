import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mirana/cores/theme.dart';
import 'package:mirana/features/location/states/bloc/device_location_bloc.dart';
import 'package:mirana/features/place/states/near_by_places_bloc/near_by_places_bloc.dart';
import 'package:mirana/features/place/states/saved_places_bloc/saved_places_bloc.dart';
import 'package:mirana/ui/screens/home_screen.dart';
import 'package:mirana/ui/screens/navigation_screen.dart';
import 'dependency.dart';

class BlocObs extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint(
        "Bloc ${bloc.runtimeType}{currentState : ${change.currentState}, nextState ${change.nextState} }");
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = BlocObs();
  await initDependency();
  runApp(MyApp(
    instance: instance,
  ));
}

class MyApp extends StatelessWidget {
  final GetIt instance;
  const MyApp({super.key, required this.instance});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DeviceLocationBloc>(
            create: (_) => instance.get<DeviceLocationBloc>()
              ..add(const DeviceLocationEvent.loadCurrentLocation())),
        BlocProvider<NearByPlacesBloc>(
          create: (_) => instance.get<NearByPlacesBloc>(),
        ),
        BlocProvider<SavedPlacesBloc>(
          create: (_) => instance.get<SavedPlacesBloc>(),
        )
      ],
      child: MaterialApp(
          title: 'Mirana',
          theme: AppTheme.fromIsDarkModeActive(true).theme,
          home: NavigationScreen(
            instance: instance,
          )),
    );
  }
}
