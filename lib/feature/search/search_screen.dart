import 'package:flutter/material.dart' hide SearchController;
import 'package:provider/provider.dart';

import 'controllers/search_controller.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<SearchController>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Search",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                context.read<SearchController>().searchNews(value);
              },
              decoration: InputDecoration(
                hintText: "Search News...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: Builder(
                builder: (context) {
                  if (controller.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (controller.articles.isEmpty) {
                    return const Center(
                      child: Text(
                        "Start typing to search...",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    );
                  }

                  return ListView.separated(
                    itemCount: controller.articles.length,
                    separatorBuilder: (_, __) =>
                    const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final article = controller.articles[index];

                      return ListTile(
                        contentPadding: EdgeInsets.zero,

                        leading: article.image != null
                            ? ClipRRect(
                          borderRadius:
                          BorderRadius.circular(8),
                          child: Image.network(
                            article.image!,
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                            errorBuilder:
                                (_, __, ___) =>
                            const Icon(Icons.image),
                          ),
                        )
                            : const Icon(Icons.image),

                        title: Text(
                          article.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                        subtitle: Text(
                          article.source,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}