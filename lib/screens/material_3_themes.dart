import 'package:flutter/material.dart';

class Material3Themes extends StatelessWidget {
  const Material3Themes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Material3 Themeing',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onSecondary),
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          color: Theme.of(context).colorScheme.primary,
          child: Text(
            'Text with a background color',
            // TRY THIS: Change the Text value
            //           or change the theme.of(context).textTheme
            //           to "displayLarge" or "displaySmall".
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          // TRY THIS: Change the seedColor to "Colors.red"
          //           or "Colors.blue".
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purpleAccent,
            brightness: Brightness.dark,
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
