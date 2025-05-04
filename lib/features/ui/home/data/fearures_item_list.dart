
import 'package:hidayah/features/ui/hadis/screen/hadis_screen.dart';
import 'package:hidayah/features/ui/read_more/read_more_screen.dart';

import '../../../../../app/utils/asset_path.dart';
import '../../ibadat/screens/allah_name_screen.dart';
import '../../ibadat/screens/hoz_screen.dart';
import '../../ibadat/screens/jakat_screens.dart';
import '../../ibadat/screens/tasbih_count_screen.dart';
import '../../quryan/screens/sura_name_list_screen.dart';
import 'features_item_model.dart';

final List<FeatureItem> featureItemList = [
  FeatureItem(name: 'আল-কুরআন', image: AssetImages.dua, route: SuraNameListScreen.name),
  FeatureItem(name: 'হাদিস', image: AssetImages.dua, route: HadisScreen.name),
  FeatureItem(name: 'আল-আসমাউল-হুস্না', image: AssetImages.name, route: AllahNameScreen.name),
  FeatureItem(name: 'তাসবিহ-গনণা', image: AssetImages.tasbih, route: TasbihCountScreen.name),
  FeatureItem(name: 'যাকাত', image: AssetImages.jakat, route: JakatScreen.name),
  FeatureItem(name: 'হজ', image: AssetImages.dua, route: HozScreen.name),
  FeatureItem(name: 'আরো জানুন', image: AssetImages.dua, route: ReadMoreScreen.name),

];