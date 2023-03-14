import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

  static List<Article> articles = [
    Article(
      id: '1',
      title:
          "Lorem ipsum dolor sit amet, ut labore et dolore magna. Duis mollit anim id est laborum.",
      subtitle:
          'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
      body:
          'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
      author: 'Oyegbile D. Praise',
      authorImageUrl:
          'https://res.cloudinary.com/praisecloud/image/upload/v1675345645/1674679168131_qdiar0.jpg',
      category: 'Politics',
      imageUrl:
          'https://images.unsplash.com/photo-1678717122482-770e12b40202?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
      views: 1023,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '1',
      title:
          "Lorem ipsum dolor sit amet, ut labore et dolore magna. Duis mollit anim id est laborum.",
      subtitle:
          'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
      body:
          'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
      author: 'Oyegbile D. Praise',
      authorImageUrl:
          'https://res.cloudinary.com/praisecloud/image/upload/v1675345645/1674679168131_qdiar0.jpg',
      category: 'Politics',
      imageUrl:
          'https://images.unsplash.com/photo-1678717122482-770e12b40202?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
      views: 1023,
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    )
  ];

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        createdAt,
      ];
}
