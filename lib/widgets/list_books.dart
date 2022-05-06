import 'package:flutter/material.dart';
import 'package:library_app/theme/AppColors.dart';

import '../models/book_model.dart';

class ListBooks extends StatelessWidget {
  List<BookModel> books = [
    BookModel(
      author: "George Orwell",
      title: "1984",
      image: "assets/images/book1.png",
    ),
    BookModel(
      author: "George Orwell",
      title: "1984",
      image: "assets/images/book.png",
    ),
    BookModel(
      author: "George Orwell",
      title: "1984",
      image: "assets/images/book.png",
    ),
    BookModel(
      author: "George Orwell",
      title: "1984",
      image: "assets/images/book.png",
    ),
  ];
  ListBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: books.length,
      itemBuilder: (context, index) {
        return _ItemList(
          book: books[index],
        );
      },
    );
  }
}

class _ItemList extends StatelessWidget {
  BookModel book;
  _ItemList({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(book.image),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(book.title),
                      Text(book.author),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      Ink(
                        width: MediaQuery.of(context).size.width * 0.08,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_right_outlined,
                            color: AppColors.background,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
