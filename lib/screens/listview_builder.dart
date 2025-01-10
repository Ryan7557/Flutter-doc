import 'package:flutter/material.dart';

class ListviewBuilder extends StatelessWidget {
  const ListviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder'),
      ),
      body: const ListsWithCards(),
    );
  }
}

class ListsWithCards extends StatelessWidget {
  const ListsWithCards({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> listsData = [
      ['item 1', 'item 2', 'item 3'],
      ['item A', 'item B', 'item C', 'item D'],
      ['item X', 'item Y', 'item Z'],
      ['item P', 'item Q', 'item R'],
      ['item M', 'item N', 'item O'],
    ];
    return ListView.builder(
      itemCount: listsData.length,
      itemBuilder: (context, index) {
        return CardList(listData: listsData[index]);
      },
    );
  }
}

class CardList extends StatelessWidget {
  final List<String> listData;

  const CardList({super.key, required this.listData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          ListTile(
            title: Text('List ${listData[0]}'),
          ),
          const Divider(),
          ListView.builder(
            itemCount: listData.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(listData[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
