import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets"),
      ),
      body: Center(
        child: Text("Widgets"),
      ),
      drawer: _getDrawer(context),
    );
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent[100]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    "assets/logo.png",
                    width: 260,
                    height: 120,
                  ),
                ],
              )),
          ListTile(
            title: Text("Text"),
            leading: Icon(
              Icons.text_fields,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/text"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Image Network"),
            leading: Icon(
              Icons.image,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/imagenetwork"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Icon"),
            leading: Icon(
              Icons.radio_button_off,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/icon"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Icon Button"),
            leading: Icon(
              Icons.radio_button_on,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/iconbutton"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Scaffold"),
            leading: Icon(
              Icons.smartphone,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/scaffold"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Center"),
            leading: Icon(
              Icons.center_focus_strong,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/center"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("CheckBox"),
            leading: Icon(
              Icons.check_box,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/checkbox"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Chip"),
            leading: Icon(
              Icons.video_call,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/chip"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Circular Progress Indicator"),
            leading: Icon(
              Icons.drag_indicator_rounded,
              color: Colors.blue,
            ),
            onTap: () =>
                Navigator.of(context).pushNamed("/circularprogressindicator"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Column"),
            leading: Icon(
              Icons.view_column,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/column"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Data Table"),
            leading: Icon(
              Icons.table_chart,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/datatable"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Datepicker"),
            leading: Icon(
              Icons.date_range,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/datepicker"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("DecoratedBox"),
            leading: Icon(
              Icons.add_box,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/decoratedbox"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("DefaultTextStyle"),
            leading: Icon(
              Icons.text_format,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/defaulttextstyle"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Dissmisible"),
            leading: Icon(
              Icons.line_axis,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/dissmisible"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Divider"),
            leading: Icon(
              Icons.line_axis,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/divider"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Expanded"),
            leading: Icon(
              Icons.expand,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/expanded"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("FloatingActionButton"),
            leading: Icon(
              Icons.radio_button_on_rounded,
              color: Colors.blue,
            ),
            onTap: () =>
                Navigator.of(context).pushNamed("/floatingactionbutton"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("FutureBuilder"),
            leading: Icon(
              Icons.construction,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/futurebuilder"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Image"),
            leading: Icon(
              Icons.image,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/image"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("ListTile"),
            leading: Icon(
              Icons.rowing,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/listtile"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Opacity"),
            leading: Icon(
              Icons.opacity,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/opacity"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Padding"),
            leading: Icon(
              Icons.padding,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/padding"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Positioned"),
            leading: Icon(
              Icons.point_of_sale,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/positioned"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("RaisedButton"),
            leading: Icon(
              Icons.smart_button,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/raisedbutton"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("RefreshIndicator"),
            leading: Icon(
              Icons.drag_indicator,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/refreshindicator"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("RichText"),
            leading: Icon(
              Icons.textsms,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/richtext"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Row"),
            leading: Icon(
              Icons.rowing_sharp,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/row"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Slider"),
            leading: Icon(
              Icons.slideshow,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/slider"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("SimpleDialog"),
            leading: Icon(
              Icons.message_rounded,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/simpledialog"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("SnackBar"),
            leading: Icon(
              Icons.bar_chart_sharp,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/snackbar"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Stack"),
            leading: Icon(
              Icons.stacked_bar_chart,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/stack"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("StreamBuilder"),
            leading: Icon(
              Icons.stream,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/streambuilder"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Switch"),
            leading: Icon(
              Icons.switch_access_shortcut,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/switch"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("TabBar"),
            leading: Icon(
              Icons.tab,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/tabbar"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("TabBarView"),
            leading: Icon(
              Icons.tab_rounded,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/tabbarview"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Wrap"),
            leading: Icon(
              Icons.wrap_text,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/wrap"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Margin Padding"),
            leading: Icon(
              Icons.padding,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/marginpadding"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Colores"),
            leading: Icon(
              Icons.colorize,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/colors"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("List View"),
            leading: Icon(
              Icons.list,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/listview"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("List View Builder"),
            leading: Icon(
              Icons.list_alt,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/listviewbuilder"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("List View Lista"),
            leading: Icon(
              Icons.list_alt_outlined,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/listviewlista"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("List View Imágenes"),
            leading: Icon(
              Icons.list_alt_rounded,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/listviewimages"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Assets"),
            leading: Icon(
              Icons.assessment,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/assets"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Tipografías"),
            leading: Icon(
              Icons.font_download,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/tipografias"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("LinearProgressIndicator-Switch-Timer"),
            leading: Icon(
              Icons.time_to_leave,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context)
                .pushNamed("/linearprogressindicatorswitchtimer"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("GestureDetector"),
            leading: Icon(
              Icons.gesture,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/gesturedetector"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Botones"),
            leading: Icon(
              Icons.smart_button,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/botones"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Navigator"),
            leading: Icon(
              Icons.navigate_before,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/navigator"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Form sin WForm"),
            leading: Icon(
              Icons.format_align_center,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/formsinwidgetform"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Form con WForm"),
            leading: Icon(
              Icons.format_align_center,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/formconwidgetform"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Tipos de Teclado"),
            leading: Icon(
              Icons.keyboard,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/tiposteclado"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Focus Node"),
            leading: Icon(
              Icons.center_focus_strong,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/focusnode"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Drawer"),
            leading: Icon(
              Icons.draw,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/drawer"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Drawer2"),
            leading: Icon(
              Icons.draw,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/drawer2"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("AlertDialog"),
            leading: Icon(
              Icons.question_answer,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/alertdialog"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("FadeInImage"),
            leading: Icon(
              Icons.image,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/fadeinimage"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("AnimationHero"),
            leading: Icon(
              Icons.image,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/animationhero"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("Plugin PickImage"),
            leading: Icon(
              Icons.image,
              color: Colors.blue,
            ),
            onTap: () => Navigator.of(context).pushNamed("/pluginpickimage"),
          ),
          Divider(
            height: 2,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }

  _showHome(BuildContext context) {
    Navigator.pop(context);
  }
}
