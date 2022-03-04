import 'package:flutter/material.dart';
import 'package:widgets/screens/alertdialog_screen.dart';
import 'package:widgets/screens/animationhero2_screen.dart';
import 'package:widgets/screens/animationhero_screen.dart';
import 'package:widgets/screens/assets_screen.dart';
import 'package:widgets/screens/botones_screen.dart';
import 'package:widgets/screens/colors_screen.dart';
import 'package:widgets/screens/drawer2_screen.dart';
import 'package:widgets/screens/drawer_screen.dart';
import 'package:widgets/screens/fadeinimage_screen.dart';
import 'package:widgets/screens/focusnode_screen.dart';
import 'package:widgets/screens/formconwidgetform_screen.dart';
import 'package:widgets/screens/formsinwidgetform_screen.dart';
import 'package:widgets/screens/gesturedetector_screen.dart';
import 'package:widgets/screens/linearprogressindicatorswitchtimer_screen.dart';
import 'package:widgets/screens/listview_screen.dart';
import 'package:widgets/screens/listviewbuilder.dart';
import 'package:widgets/screens/listviewimages_screen.dart';
import 'package:widgets/screens/listviewlista_screen.dart';
import 'package:widgets/screens/marginpadding_screen.dart';
import 'package:widgets/screens/navigator1_screen.dart';
import 'package:widgets/screens/navigator3_screen.dart';
import 'package:widgets/screens/pluginpickimage_screen.dart';
import 'package:widgets/screens/raisedbutton_screen.dart';
import 'package:widgets/screens/richtext_screen.dart';
import 'package:widgets/screens/row_screen.dart';
import 'package:widgets/screens/image_screen.dart';
import 'package:widgets/screens/floatingactionbutton_screen.dart';
import 'package:widgets/screens/futurebuilder_screen.dart';
import 'package:widgets/screens/center_screen.dart';
import 'package:widgets/screens/checkbox_screen.dart';
import 'package:widgets/screens/chip_screen.dart';
import 'package:widgets/screens/circularprogressindicator_screen.dart';
import 'package:widgets/screens/column_screen.dart';
import 'package:widgets/screens/datatable_screen.dart';
import 'package:widgets/screens/datepicker_screen.dart';
import 'package:widgets/screens/decoratedbox_screen.dart';
import 'package:widgets/screens/defaulttextstyle_screen.dart';
import 'package:widgets/screens/dissmisible_screen.dart';
import 'package:widgets/screens/divider_screen.dart';
import 'package:widgets/screens/expanded_screen.dart';
import 'package:widgets/screens/home_screen.dart';
import 'package:widgets/screens/listtile_screen.dart';
import 'package:widgets/screens/opacity_screen.dart';
import 'package:widgets/screens/padding_screen.dart';
import 'package:widgets/screens/positioned_screen.dart';
import 'package:widgets/screens/refreshindicator_screen.dart';
import 'package:widgets/screens/simpledialog_screen.dart';
import 'package:widgets/screens/slider_screen.dart';
import 'package:widgets/screens/snackbar_screen.dart';
import 'package:widgets/screens/stack_screen.dart';
import 'package:widgets/screens/streambuilder_screen.dart';
import 'package:widgets/screens/switch_screen.dart';
import 'package:widgets/screens/tabbar_screen.dart';
import 'package:widgets/screens/tabbarview_screen.dart';
import 'package:widgets/screens/tipografias_screen.dart';
import 'package:widgets/screens/tiposteclado_screen.dart';
import 'package:widgets/screens/wrap_screen.dart';
import 'screens/icon_screen.dart';
import 'screens/iconbutton_screen.dart';
import 'screens/imageNetwork_screen.dart';
import 'screens/scaffold_screen.dart';
import 'screens/text_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Orbitron"),
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => HomeScreen(),
        "/text": (BuildContext context) => TextScreen(),
        "/imagenetwork": (BuildContext context) => ImageNetworkScreen(),
        "/icon": (BuildContext context) => IconScreen(),
        "/iconbutton": (BuildContext context) => IconButtonScreen(),
        "/scaffold": (BuildContext context) => ScaffoldScreen(),
        "/center": (BuildContext context) => CenterScreen(),
        "/checkbox": (BuildContext context) => CheckBoxScreen(),
        "/chip": (BuildContext context) => ChipScreen(),
        "/circularprogressindicator": (BuildContext context) =>
            CircularProgressIndicatorScreen(),
        "/column": (BuildContext context) => ColumnScreen(),
        "/datatable": (BuildContext context) => DataTableScreen(),
        "/datepicker": (BuildContext context) => DatePickerScreen(),
        "/decoratedbox": (BuildContext context) => DecoratedBoxScreen(),
        "/defaulttextstyle": (BuildContext context) => DefaultTextStyleScreen(),
        "/dissmisible": (BuildContext context) => DissmisibleScreen(),
        "/divider": (BuildContext context) => DividerScreen(),
        "/expanded": (BuildContext context) => ExpandedScreen(),
        "/floatingactionbutton": (BuildContext context) =>
            FloatingActionButtonScreen(),
        "/futurebuilder": (BuildContext context) => FutureBuilderScreen(),
        "/image": (BuildContext context) => ImageScreen(),
        "/listtile": (BuildContext context) => ListTileScreen(),
        "/opacity": (BuildContext context) => OpacityScreen(),
        "/padding": (BuildContext context) => PaddingScreen(),
        "/positioned": (BuildContext context) => PositionedScreen(),
        "/raisedbutton": (BuildContext context) => RaisedButtonScreen(),
        "/refreshindicator": (BuildContext context) => RefreshIndicatorScreen(),
        "/richtext": (BuildContext context) => RichTextScreen(),
        "/row": (BuildContext context) => RowScreen(),
        "/slider": (BuildContext context) => SliderScreen(),
        "/simpledialog": (BuildContext context) => SimpleDialogScreen(),
        "/snackbar": (BuildContext context) => SnackBarScreen(),
        "/stack": (BuildContext context) => StackScreen(),
        "/streambuilder": (BuildContext context) => StreamBuilderScreen(),
        "/switch": (BuildContext context) => SwitchScreen(),
        "/tabbar": (BuildContext context) => TabBarScreen(),
        "/tabbarview": (BuildContext context) => TabBarViewScreen(),
        "/wrap": (BuildContext context) => WrapScreen(),
        "/marginpadding": (BuildContext context) => MarginPaddingScreen(),
        "/colors": (BuildContext context) => ColorsScreen(),
        "/listview": (BuildContext context) => ListViewScreen(),
        "/listviewbuilder": (BuildContext context) => ListViewBuilderScreen(),
        "/listviewlista": (BuildContext context) => ListViewListaScreen(),
        "/listviewimages": (BuildContext context) => ListViewImagesScreen(),
        "/assets": (BuildContext context) => AssetsScreen(),
        "/tipografias": (BuildContext context) => TipografiasScreen(),
        "/linearprogressindicatorswitchtimer": (BuildContext context) =>
            LinearProgressIndicatorSwitchTimerScreen(),
        "/gesturedetector": (BuildContext context) => GestureDetectorScreen(),
        "/botones": (BuildContext context) => BotonesScreen(),
        "/navigator": (BuildContext context) => Navigator1Screen(),
        "/formsinwidgetform": (BuildContext context) =>
            FormSinWidgetFormScreen(),
        "/formconwidgetform": (BuildContext context) =>
            FormConWidgetFormScreen(),
        "/tiposteclado": (BuildContext context) => TiposTecladoScreen(),
        "/focusnode": (BuildContext context) => FocusNodeScreen(),
        "/drawer": (BuildContext context) => DrawerScreen(),
        "/drawer2": (BuildContext context) => Drawer2Screen(),
        "/alertdialog": (BuildContext context) => AlertDialogScreen(),
        "/fadeinimage": (BuildContext context) => FadeInImageScreen(),
        "/animationhero": (BuildContext context) => AnimationHeroScreen(),
        "/animationhero2": (BuildContext context) => AnimationHero2Screen(),
        "/pluginpickimage": (BuildContext context) => PluginPickImageScreen(),
      },
    );
  }
}
