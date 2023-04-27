# mirana

An app to find restaurant and hospital.

This project builded with Flutter version 3.7.1, Dart version 2.19.1, Android SDK 33.0.2, Xcode 14.0 & Java version 11.0.12

However this app builded with places data (Restaurant and Hospital Places) from this <a href="https://github.com/anak10thn/dishub-webgis-data">Repository</a>, i downloaded the json file that i needed, and saved to this project.

So, if you look at that repository there are <a href="https://github.com/anak10thn/dishub-webgis-data/blob/master/rumahsakit.json">Hospital</a> & <a href="https://github.com/anak10thn/dishub-webgis-data/blob/master/restaurant.json">Restaurant</a> in Json format, there are duplicate data. So if you try this app, maybe there are several place shown in the app.

This project only use google map API to render map and places. Distance calculation use <a href="https://en.wikipedia.org/wiki/Haversine_formula">Haversine Formula</a>.

## Getting Started

### Installation

- Make sure you already installed Flutter.
- I recommended use all tools version that i mentioned in description

```
   git clone github.com/nandanurseptama/mirana.git <folder_name>
   cd <folder_name>
```

### Run

```
   flutter pub get
   flutter run --multidex
```

### Build

```
    flutter build apk --multidex
```

## Miscellaneous

### Dependencies

- shared_preferences (local storage)
- flutter_bloc (state management)
- freezed_annotation (annotation for data-classes/unions/pattern-matching/cloning)
- json_annotation (annotation for model to generate fromJson & toJson)
- equatable (Equality comparator)
- injectable (Injectable generates code that we would have otherwise written by using annotations)
- get_it (service locator)
- uuid (uuid generator)
- geolocator (detect current location of devices)
- google_maps_flutter (render google map)

### Dev Dependencies

- build_runner (A build system for Dart code generation and modular compilation)
- injectable_generator (injectable code generator)
- freezed (code generator for data-classes/unions/pattern-matching/cloning)
- json_serializable (code generator for model)

## Screen Shoot

<img src="https://raw.githubusercontent.com/nandanurseptama/mirana/master/ss/home.png" width="270" height="570" alt="Home Screen"><img src="https://raw.githubusercontent.com/nandanurseptama/mirana/master/ss/saved_place.png" width="270" height="570" alt="Saved Place"><img src="https://raw.githubusercontent.com/nandanurseptama/mirana/master/ss/find_restaurant.png" width="270" height="570" alt="Find Restaurant"><img src="https://raw.githubusercontent.com/nandanurseptama/mirana/master/ss/find_both.png" width="270" height="570" alt="Find Both (restaurant & hospital)">
