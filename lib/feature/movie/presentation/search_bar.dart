import 'package:flutter/material.dart';

// TODO: あとで実装する
class MovieSerachBar extends StatelessWidget {
  const MovieSerachBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      builder: (BuildContext context, SearchController controller) {
        return SearchBar(
          controller: controller,
          padding: const MaterialStatePropertyAll<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 16.0),
          ),
          onSubmitted: (String value) {},
          leading: const Icon(Icons.search),
        );
      },
      suggestionsBuilder: (BuildContext context, SearchController controller) {
        return List<ListTile>.generate(5, (int index) {
          return ListTile(
            title: Text('Suggestion $index'),
            onTap: () {
              controller.text = 'Suggestion $index';
            },
          );
        });
      },
    );
  }
}
