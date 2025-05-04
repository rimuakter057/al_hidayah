
import 'package:hidayah/features/ui/screen/home/data/prayer_name_model.dart';

import '../../../../../app/utils/asset_path.dart';
import '../../../namaz/screens/asr_screen.dart';
import '../../../namaz/screens/fojor_screen.dart';
import '../../../namaz/screens/isha_screen.dart';
import '../../../namaz/screens/johor_screen.dart';
import '../../../namaz/screens/magrib_screen.dart';

List <PrayerNameModel> prayerNameList=[

  PrayerNameModel(name:"ফজর", image: AssetImages.name, route: FojorScreen.name),

  PrayerNameModel(name:"যোহর", image: AssetImages.name, route: JohorScreen.name),

  PrayerNameModel(name:"আসর", image: AssetImages.name, route: AsrScreen.name),

  PrayerNameModel(name:"মাগরিব", image: AssetImages.name, route: MagribScreen.name),

  PrayerNameModel(name:"ইশা", image: AssetImages.name, route: IshaScreen.name),


];