import 'package:flutter/material.dart';

class SliverAppbarWidget extends StatelessWidget {
  const SliverAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            backgroundColor: Colors.black87,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.black87,
                    Colors.transparent,
                  ], begin: Alignment.bottomCenter, end: Alignment.center),
                ),
                child: Image.network(
                  'https://images6.alphacoders.com/821/thumb-1920-821363.png',
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text(
                'Berserk Tracker',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
          // sliver items
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: ItemWidget(text: 'Guts'),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: ItemWidget(text: 'Griffith'),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: ItemWidget(text: 'Casca'),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: ItemWidget(text: 'Shricke'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: Text(
                    'Item $index',
                    style: TextStyle(color: Colors.white),
                  ),
                  tileColor: Colors.purple[100 * (index % 9)],
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white30,
      child: SizedBox(
        height: 200,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
