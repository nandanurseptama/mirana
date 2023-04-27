import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mirana/features/place/states/saved_places_bloc/saved_places_bloc.dart';
import 'package:mirana/ui/screens/home_screen.dart';
import 'package:mirana/ui/screens/saved_place_screen.dart';

class NavigationScreen extends StatefulWidget {
  final GetIt instance;
  const NavigationScreen({super.key, required this.instance});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final ValueNotifier<int> _currentNavigationIndex = ValueNotifier(0);
  late final SavedPlacesBloc savedPlacesBloc =
      widget.instance.get<SavedPlacesBloc>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: _currentNavigationIndex,
        builder: (context, currentNavigationIndex, _) {
          return Scaffold(
            bottomNavigationBar: _bottomNavigation(currentNavigationIndex),
            body: SafeArea(
              child: _savedPlaceListener(
                child: IndexedStack(
                  index: currentNavigationIndex,
                  children: [
                    HomeScreen(instance: widget.instance),
                    SavedPlaceScreen(
                      instance: widget.instance,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget _savedPlaceListener({required Widget child}) {
    return BlocListener<SavedPlacesBloc, SavedPlacesState>(
      bloc: savedPlacesBloc,
      listener: (context, state) {
        return state.maybeMap<void>(
          error: (value) {
            if (value.places != null) {
              showSnackbarError(value.error);
              return;
            }
            return;
          },
          orElse: () {
            return;
          },
        );
      },
      child: child,
    );
  }

  Widget _bottomNavigation(int currentNavigationIndex) {
    return BottomNavigationBar(
      currentIndex: currentNavigationIndex,
      onTap: (value) {
        setState(() {
          _currentNavigationIndex.value = value;
        });
        return;
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.collections), label: "Saved Place"),
      ],
    );
  }

  void showSnackbarError(String error) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(error),
        backgroundColor: Theme.of(context).colorScheme.error));
  }
}
