import 'package:dictionaryapp/main.dart';
import 'package:dictionaryapp/services/routes/routesconstants.dart';
import 'package:dictionaryapp/themes/styles.dart';
import 'package:dictionaryapp/themes/theme.dart';
import 'package:dictionaryapp/themes/theme_manager.dart';
import 'package:dictionaryapp/views/bookmark/bookmark_view.dart';
import 'package:dictionaryapp/views/homepage/widgets/readingsection.dart';
import 'package:dictionaryapp/views/homepage/widgets/searchbar.dart';
import 'package:dictionaryapp/views/homepage/widgets/titlesection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePager extends StatefulWidget {
  const HomePager({super.key});

  @override
  HomePagerState createState() => HomePagerState();
}

class HomePagerState extends State<HomePager> {
  // final VoidCallback onThemeChanged;
  // const _HomePagerState({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool islight = true;

    ThemeManager themeManager = ThemeManager();

    // ThemeManager themeManager = ThemeManager();
    return MaterialApp(
      title: 'Dictionary App',
      theme: AppThemes.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dictionary App"),
          actions: [
            Switch(
              value: isDark,
              onChanged: (value) {
                islight = !islight;
                setState(() {
                  themeManager.toggleTheme();

                  // print(islight);
                });
              },
            ),
            IconButton(
              onPressed: () {
                GoRouter.of(context).pushNamed(
                  RoutesConstants.bookmarks,
                  pathParameters: {'userId': 'faizan ali'},
                );
              },
              icon: Icon(Icons.bookmark_border, color: Colors.white),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Customcolors.primary),
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  GoRouter.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  GoRouter.of(context).pop();
                },
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor.withAlpha(40),
                // border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              child: Column(
                children: [
                  // Container(
                  //   margin: const EdgeInsets.only(top: 30, left: 5, right: 5),
                  //   decoration: BoxDecoration(
                  //     // border: Border.all(color: Colors.black, width: 2.0),
                  //   ),
                  //   child: TopbarWidget(),
                  // ),
                  // const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 5,
                      right: 5,
                      bottom: 10,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.black, width: 2.0),
                    ),
                    child: SearchbarWidget(),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 5, right: 5),
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.black, width: 2.0),
              ),
              child: Titlesection(),
            ),
            Expanded(child: SingleChildScrollView(child: Readingsection())),
          ],
        ),
      ),
    );
  }
}
