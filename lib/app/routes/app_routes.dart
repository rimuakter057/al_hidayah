import 'package:flutter/material.dart';
import 'package:hidayah/features/ui/hadis/screen/hadis_screen.dart';

import '../../features/ui/namaz/screens/asr_screen.dart';
import '../../features/ui/namaz/screens/fojor_screen.dart';
import '../../features/ui/namaz/screens/isha_screen.dart';
import '../../features/ui/namaz/screens/johor_screen.dart';
import '../../features/ui/namaz/screens/magrib_screen.dart';
import '../../features/ui/quryan/screens/sura_name_list_screen.dart';
import '../../features/ui/quryan/screens/sura_read_screen.dart';
import '../../features/ui/screen/dua/screens/audio_mp3_screen.dart';
import '../../features/ui/screen/dua/screens/dua_playlist_screen.dart';
import '../../features/ui/screen/home/screens/home_screen.dart';

import '../../features/ui/screen/ibadat/screens/allah_name_screen.dart';
import '../../features/ui/screen/ibadat/screens/hoz_screen.dart';
import '../../features/ui/screen/ibadat/screens/jakat_screens.dart';
import '../../features/ui/screen/ibadat/screens/tasbih_count_screen.dart';

import '../../features/ui/screen/salat/screens/prayer_list_screen.dart';
class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    debugPrint("Route requested: ${settings.name}");

    late Widget route;
    if (settings.name == HomeScreen.name) {
      route = const HomeScreen();
    }


    else if (settings.name == JakatScreen.name) {
      route = const JakatScreen();
    }


    else if (settings.name == PrayerListScreen.name) {
      route = const PrayerListScreen();
    }
    else if (settings.name == SuraReadScreen.name) {
      final data=settings.arguments as Map<String,dynamic>;
      route =  SuraReadScreen(suraFile: data,);
    }


    else if (settings.name ==
        SuraNameListScreen.name) {
      route =  SuraNameListScreen();
    }
    else if (settings.name == AllahNameScreen.name) {
      route = const AllahNameScreen();
    }    else if (settings.name == DuaPlayListScreen.name) {
      route = const DuaPlayListScreen();
    } else if (settings.name == AudioMp3Screen.name) {
      route = const AudioMp3Screen();
    }
    else if (settings.name == TasbihCountScreen.name) {
      route = const TasbihCountScreen();
    } else if (settings.name == HadisScreen.name) {
      route = const HadisScreen();
    }

    else if (settings.name == AsrScreen.name) {
      route = const AsrScreen();
    } else if (settings.name == FojorScreen.name) {
      route = const FojorScreen();
    } else if (settings.name == JohorScreen.name) {
      route = const JohorScreen();
    } else if (settings.name == MagribScreen.name) {
      route = const MagribScreen();
    } else if (settings.name == IshaScreen.name) {
      route = const IshaScreen();
    }else if (settings.name == HozScreen.name) {
      route = const HozScreen();
    }


      else {
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(child: Text(" No route defined for ${settings.name}")),
        ),
      );
    }

    return MaterialPageRoute(builder: (_) => route);
  }
}
