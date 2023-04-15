import 'package:example_collections/AlertDialog/AlertDialog.dart';
import 'package:example_collections/AnimatedContainer/AnimatedContainer.dart';
import 'package:example_collections/AnimatedOpacity/AnimatedOpacity.dart';
import 'package:example_collections/AppBar/AppBar.dart';
import 'package:example_collections/BottomNavigationBar/BottomNavigationBar.dart';
import 'package:example_collections/Checkbox/Checkbox.dart';
import 'package:example_collections/Column/Column.dart';
import 'package:example_collections/Container/Container.dart';
import 'package:example_collections/CupertinoButton/CupertinoButton.dart';
import 'package:example_collections/CustomScrollView/CustomScrollView.dart';
import 'package:example_collections/Dismissible/Dismissible.dart';
import 'package:example_collections/Drawer/Drawer.dart';
import 'package:example_collections/Expanded/Expanded.dart';
import 'package:example_collections/FloatingActionButton/FloatingActionButton.dart';
import 'package:example_collections/Flow/Flow.dart';
import 'package:example_collections/GestureDetector/GestureDetector.dart';
import 'package:example_collections/GridView/GridView.dart';
import 'package:example_collections/Icon/Icon.dart';
import 'package:example_collections/IconButton/IconButton.dart';
import 'package:example_collections/InkWell/InkWell.dart';
import 'package:example_collections/ListTile/ListTile.dart';
import 'package:example_collections/ListView/ListView.dart';
import 'package:example_collections/Radio/Radio.dart';
import 'package:example_collections/Row/Row.dart';
import 'package:example_collections/SelectableText/SelectableText.dart';
import 'package:example_collections/SizedBox/SizedBox.dart';
import 'package:example_collections/SnackBar/SnackBar.dart';
import 'package:example_collections/Stack/Stack.dart';
import 'package:example_collections/StreamBuilder/StreamBuilder.dart';
import 'package:example_collections/Switch/Switch.dart';
import 'package:example_collections/TabBar/TabBarTop.dart';
import 'package:example_collections/Text/Text.dart';
import 'package:example_collections/TextButton/TextButton.dart';
import 'package:example_collections/TextField/TextField.dart';
import 'package:example_collections/TextField/TextField_Form.dart';
import 'package:example_collections/showDatePicker/showDatePicker.dart';
import 'package:example_collections/showModalBottomSheet/showModalBottomSheet.dart';
import 'package:example_collections/showTimePicker/showTimePicker.dart';
import 'package:flutter/material.dart';
import 'ClipPath/ClipPath.dart';
import 'CustomPaint/CustomPaint.dart';
import 'ElevatedButton/ElevatedButton.dart';
import 'Image/CachedNetworkImage.dart';
import 'Image/Image.dart';
import 'MediaQuery/MediaQuery.dart';
import 'RichText/RichText.dart';
import 'SimpleDialog/SimpleDialog.dart';
import 'SingleChildScrollView/SingleChildScrollView.dart';
import 'Slider/Slider.dart';
import 'TabBar/TabBarBottom.dart';
import 'TweenAnimationBuilder/TweenAnimationBuilder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example Collections',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _openTextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => TextPage(
                text: 'Example Text',
                onTextChange: (String newText) {
                  debugPrint('Text changed: $newText');
                },
              )),
    );
  }

  void _openRichTextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RichTextPage()),
    );
  }

  void _openSelectableTextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SelectableTextPage()),
    );
  }

  void _openImagePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ImagePage()),
    );
  }

  void _openNetworkImagePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CachedNetworkImagePage()),
    );
  }

  void _openIconPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const IconPage()),
    );
  }

  void _openElevatedButtonPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const EvevatedButtonPage()),
    );
  }

  void _openTextButtonPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TextButtonPage()),
    );
  }

  void _openCupertinoButtonPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CupertinoButtonPage()),
    );
  }

  void _openFloatingActionButtonPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FloatingActionButtonPage()),
    );
  }

  void _openIconButtonPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const IconButtonPage()),
    );
  }

  void _openCheckBoxPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CheckBoxPage()),
    );
  }

  void _openRadioPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RadioPage()),
    );
  }

  void _openSwitchPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SwitchPage()),
    );
  }

  void _openTextFieldPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TextFieldPage()),
    );
  }

  void _openTextField_FormPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TextField_FormPage()),
    );
  }

  void _openSliderPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SliderPage()),
    );
  }

  void _openContainerPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ContainerPage()),
    );
  }

  void _openRowPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RowPage()),
    );
  }

  void _openColumnPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ColumnPage()),
    );
  }

  void _openStackPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const StackPage()),
    );
  }

  void _openExpandedPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ExpandedPage()),
    );
  }

  void _openSizedBoxPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SizedBoxPage()),
    );
  }

  void _openSingleChildScrollViewPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const SingleChildScrollViewPage()),
    );
  }

  void _openGestureDetectorPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const GestureDetectorPage()),
    );
  }

  void _openDismissiblePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const DismissiblePage()),
    );
  }

  void _openInkWellPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const InkWellPage()),
    );
  }

  void _openMediaQueryPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MediaQueryStatePage()),
    );
  }

  void _openStreamBuilderPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const StreamBuilderPage()),
    );
  }

  void _openAppBarPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AppBarPage()),
    );
  }

  void _openTabBarTopPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TabBarTopPage()),
    );
  }

  void _openTabBarBottomPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TabBarBottomPage()),
    );
  }

  void _openDrawerPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const DrawerPage()),
    );
  }

  void _openBottomNavigationBarPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BottomNavigationBarPage()),
    );
  }

  void _openAlertDialogPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AlertDialogPage()),
    );
  }

  void _openSimpleDialogPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SimpleDialogPage()),
    );
  }

  void _openShowModalBottomSheetPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ShowModalBottomSheetPage()),
    );
  }

  void _openShowDatePickerPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ShowDatePickerPage()),
    );
  }

  void _openShowTimePickerPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ShowTimePickerPage()),
    );
  }

  void _openSnackBarPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SnackBarPage()),
    );
  }

  void _openListViewPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ListViewPage()),
    );
  }

  void _openListTilePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ListTilePage()),
    );
  }

  void _openGridViewPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const GridViewPage()),
    );
  }

  void _openCustomScrollViewPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CustomScrollViewPage()),
    );
  }

  void _openAnimatedContainerPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AnimatedContrainerPage()),
    );
  }

  void _openAnimatedOpacityPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AnimatedOpacityPage()),
    );
  }

  void _openTweenAnimationBuilderPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const TweenAnimationBuilderPage()),
    );
  }

  void _openCustomPaintPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CustomPaintPage()),
    );
  }

  void _openClipPathPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ClipPathPage()),
    );
  }

  void _openFlowPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FlowPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
          child: Align(
              alignment: Alignment.topCenter,
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () => _openTextPage(context),
                      child: const Text('Open Text Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openRichTextPage(context),
                      child: const Text('Open Rich Text Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openSelectableTextPage(context),
                      child: const Text('Open Selectable Text Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openImagePage(context),
                      child: const Text('Open Image Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openNetworkImagePage(context),
                      child: const Text('Open Cached Network Image Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openIconPage(context),
                      child: const Text('Open Icon Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openElevatedButtonPage(context),
                      child: const Text('Open ElevatedButton Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openTextButtonPage(context),
                      child: const Text('Open TextButton Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openCupertinoButtonPage(context),
                      child: const Text('Open CupertinoButton Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openFloatingActionButtonPage(context),
                      child: const Text('Open FloatingActionButton Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openIconButtonPage(context),
                      child: const Text('Open IconButton Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openCheckBoxPage(context),
                      child: const Text('Open CheckBox Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openRadioPage(context),
                      child: const Text('Open Radio Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openSwitchPage(context),
                      child: const Text('Open Switch Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openTextFieldPage(context),
                      child: const Text('Open TextField Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openTextField_FormPage(context),
                      child: const Text('Open TextField_Form Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openSliderPage(context),
                      child: const Text('Open Slider Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openContainerPage(context),
                      child: const Text('Open Container Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openRowPage(context),
                      child: const Text('Open Row Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openColumnPage(context),
                      child: const Text('Open Column Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openStackPage(context),
                      child: const Text('Open Stack Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openExpandedPage(context),
                      child: const Text('Open Expanded Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openSizedBoxPage(context),
                      child: const Text('Open SizedBox Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openSingleChildScrollViewPage(context),
                      child: const Text('Open SingleChildScrollView Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openGestureDetectorPage(context),
                      child: const Text('Open GestureDetector Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openDismissiblePage(context),
                      child: const Text('Open Dismissible Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openInkWellPage(context),
                      child: const Text('Open InkWell Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openMediaQueryPage(context),
                      child: const Text('Open MediaQuery Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openStreamBuilderPage(context),
                      child: const Text('Open StreamBuilder Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openAppBarPage(context),
                      child: const Text('Open AppBar Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openTabBarTopPage(context),
                      child: const Text('Open TabBarTop Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openTabBarBottomPage(context),
                      child: const Text('Open TabBarBottom Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openDrawerPage(context),
                      child: const Text('Open Drawer Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openBottomNavigationBarPage(context),
                      child: const Text('Open BottomNavigationBar Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openAlertDialogPage(context),
                      child: const Text('Open AlertDialog Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openSimpleDialogPage(context),
                      child: const Text('Open SimpleDialog Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openShowModalBottomSheetPage(context),
                      child: const Text('Open ShowModalBottomSheet Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openShowDatePickerPage(context),
                      child: const Text('Open ShowDatePicker Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openShowTimePickerPage(context),
                      child: const Text('Open ShowTimePicker Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openSnackBarPage(context),
                      child: const Text('Open SnackBar Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openListViewPage(context),
                      child: const Text('Open ListView Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openListTilePage(context),
                      child: const Text('Open ListTile Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openGridViewPage(context),
                      child: const Text('Open GridView Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openCustomScrollViewPage(context),
                      child: const Text('Open CustomScrollView Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openAnimatedContainerPage(context),
                      child: const Text('Open AnimatedContainer Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openAnimatedOpacityPage(context),
                      child: const Text('Open AnimatedOpacity Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openTweenAnimationBuilderPage(context),
                      child: const Text('Open TweenAnimationBuilder Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openCustomPaintPage(context),
                      child: const Text('Open CustomPaint Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openClipPathPage(context),
                      child: const Text('Open ClipPath Page'),
                    ),
                    ElevatedButton(
                      onPressed: () => _openFlowPage(context),
                      child: const Text('Open Flow Page'),
                    ),
                  ],
                ),
              ))),
    );
  }
}
