// ignore_for_file: unused_local_variable
void main() {
  Book book1 = Book(bookName: "Bela furabar age", bookPrice: 230);
  Book book2 = Book(bookName: "Loke ki bolbe", bookPrice: 250);
  Book book3 = Book(bookName: "Fera", bookPrice: 200);

  book1.authorList = [
    Author(authorName: "Arif Azad", authorEmail: "arifazad@gmail.com"),
    Author(authorName: "Foyzur Rahaman", authorEmail: "foyzur17@gmail.com"),
  ];

  book2.authorList = [
    Author(authorName: "Arman Sadik", authorEmail: "armansadik@gmail.com"),
    Author(authorName: "Sadman Sadik", authorEmail: "sadmansadik@gmail.com"),
  ];
  book3.authorList = [
    Author(authorName: "Arif Azad", authorEmail: "arifazad@gmail.com"),
    Author(authorName: "Rasel Hossen", authorEmail: "raselhossen123@gmail.com"),
  ];

  book1.publisher = Publisher(
      publisherName: "Somokalin Prokashoni",
      publisherEmail: "somokalin@gmail.com");
  book2.publisher = Publisher(
      publisherName: "Bindu Prokashoni", publisherEmail: "bindu@gmail.com");
  book3.publisher = Publisher(
      publisherName: "E Prokashoni", publisherEmail: "eprokashoni@gmail.com");

  List bookList = [book1, book2, book3];
  int count = 1;
  for (var book in bookList) {
    final List<String> authorNameList = List.generate(
        book.authorList.length, (index) => book.authorList[index].authorName);
    final authorNameString = authorNameList.join(",");

    print(
        "${count} ${book.bookName} by ${authorNameString} from ${book.publisher?.publisherName}");
    count++;
  }
}

class Book {
  String bookName;
  int bookPrice;
  List<Author>? authorList;
  Publisher? publisher;

  Book({required this.bookName,required this.bookPrice,this.authorList,this.publisher});
}

class Author {
  String authorName;
  String authorEmail;

  Author({required this.authorName, required this.authorEmail});
}

class Publisher {
  String publisherName;
  String publisherEmail;

  Publisher({required this.publisherName, required this.publisherEmail});
}
