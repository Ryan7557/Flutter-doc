import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_flutter/screens/material_3_themes.dart';
// import 'package:practice_flutter/screens/tachiyomi.dart';
// import 'package:practice_flutter/screens/parallex_items.dart';
// import 'package:practice_flutter/screens/layout_builder.dart';
// import 'package:practice_flutter/screens/sliver_appbar.dart';
// import 'package:practice_flutter/screens/create_gridview.dart';
// import 'package:practice_flutter/screens/listview_builder.dart';
// import 'package:practice_flutter/screens/listview_horizontal.dart';
// import 'package:practice_flutter/screens/build_stack.dart';
// import 'package:practice_flutter/screens/card_build.dart';
// import 'package:practice_flutter/screens/layout_basic.dart';
// import 'package:practice_flutter/screens/new_list.dart';
// import 'package:practice_flutter/screens/container_practice.dart';
// import 'package:practice_flutter/screens/grid_view.dart';
// import 'package:practice_flutter/screens/list_view.dart';
// import 'package:practice_flutter/screens/container_size.dart';
// import 'package:practice_flutter/screens/pavlova.dart';
// import 'package:practice_flutter/screens/sizing.dart';
// import 'package:practice_flutter/screens/container_size.dart';
// import 'package:practice_flutter/screens/layout.dart';
// import 'package:practice_flutter/screens/text_and_image.dart';
// import 'package:practice_flutter/screens/hello.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      theme: ThemeData(
        useMaterial3: true,
        // Define the default brightness and colors

        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),

        // Define the default 'TextTheme'. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.oswald(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
          bodyMedium: GoogleFonts.merriweather(),
          displaySmall: GoogleFonts.pacifico(),
        ),
      ),
      home: const Material3Themes(),
      debugShowCheckedModeBanner: false,
    );
  }
}
