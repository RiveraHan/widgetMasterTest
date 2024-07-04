import 'package:flutter/material.dart';

class EducationalCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final VoidCallback onViewMore;
  final VoidCallback onShare;

  const EducationalCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.onViewMore,
    required this.onShare,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              child: Image.network(imageUrl,
                  height: 200, width: double.infinity, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: onViewMore,
                  child: const Text('VER MÁS'),
                ),
                TextButton(
                  onPressed: onShare,
                  child: const Text('COMPARTIR'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
