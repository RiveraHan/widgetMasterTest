import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:widget_master/screens/class_details_screen.dart';
import 'package:widget_master/widgets/educational_card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  void _viewMore(BuildContext context, String title, imageUrl) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              ClassDetailScreen(title: title, imageUrl: imageUrl)),
    );
  }

  void _share(BuildContext context, String title) {
    final RenderBox box = context.findRenderObject() as RenderBox;
    Share.share(
      'Mira este curso: $title',
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas Educativas'),
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            EducationalCard(
              imageUrl:
                  'https://cdn.pixabay.com/photo/2015/11/15/07/47/geometry-1044090_1280.jpg',
              title: 'Matemáticas',
              description: 'Aprende sobre matemáticas básicas.',
              onViewMore: () => _viewMore(context, 'Matemáticas',
                  'https://cdn.pixabay.com/photo/2015/11/15/07/47/geometry-1044090_1280.jpg'),
              onShare: () => _share(context, 'Matemáticas'),
            ),
            EducationalCard(
              imageUrl:
                  'https://cdn.pixabay.com/photo/2021/10/06/05/16/study-6684423_1280.jpg',
              title: 'Inglés',
              description: 'Clase de inglés comunicativo.',
              onViewMore: () => _viewMore(context, 'Inglés',
                  'https://cdn.pixabay.com/photo/2021/10/06/05/16/study-6684423_1280.jpg'),
              onShare: () => _share(context, 'Inglés'),
            ),
            EducationalCard(
              imageUrl:
                  'https://cdn.pixabay.com/photo/2020/10/06/16/11/chemistry-5632654_1280.jpg',
              title: 'Ciencia',
              description: 'Explora los misterios del universo.',
              onViewMore: () => _viewMore(context, 'Ciencia',
                  'https://cdn.pixabay.com/photo/2020/10/06/16/11/chemistry-5632654_1280.jpg'),
              onShare: () => _share(context, 'Ciencia'),
            ),
            EducationalCard(
              imageUrl:
                  'https://cdn.pixabay.com/photo/2017/08/07/19/07/books-2606859_1280.jpg',
              title: 'Historia',
              description: 'Descubre eventos históricos importantes.',
              onViewMore: () => _viewMore(context, 'Historia',
                  'https://cdn.pixabay.com/photo/2017/08/07/19/07/books-2606859_1280.jpg'),
              onShare: () => _share(context, 'Historia'),
            ),
          ],
        ),
      ),
    );
  }
}
