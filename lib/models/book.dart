class Book {
  String name;
  String image;
  String author;
  String description;
  String audiolength;
  List<String> inside;

  Book({
    required this.name,
    required this.author,
    required this.audiolength,
    required this.description,
    required this.inside,
    required this.image,
  });
}

abstract class Books {
  static List<Book> books = [
    Book(
      name: 'Steve Jobs',
      author: 'Walter Lsaacson',
      audiolength: '01:58',
      description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
""",
      inside: ['Steve Jobs, the chosen one', 'A wird tandem of two Steves', 'Steve Wozniak devised Apple I, and Steve Jobs monetized it', 'Investment rollercoaster for Apple II', 'Steve Jobs, a man of paradoxes', 'Dreaming the Mac through competition with IBM', 'Dramatic race to take over Apple', 'Steve Jobs Didn\'t know what people wanted; he told them wht the wanted', 'Conclusion'],
      image: 'assets/images/books/image1.png',
    ),
    Book(
      name: '1984',
      author: 'George Orwell',
      audiolength: '11:22',
      description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
""",
      inside: ['Steve Jobs, the chosen one', 'A wird tandem of two Steves', 'Steve Wozniak devised Apple I, and Steve Jobs monetized it', 'Investment rollercoaster for Apple II', 'Steve Jobs, a man of paradoxes', 'Dreaming the Mac through competition with IBM', 'Dramatic race to take over Apple', 'Steve Jobs Didn\'t know what people wanted; he told them wht the wanted', 'Conclusion'],
      image: 'assets/images/books/image2.png',
    ),
    Book(
      name: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      audiolength: '12 hours 17 minutes',
      description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
""",
      inside: [
        'Meeting Scout'
            'Jem and Scout Meet Dill'
            'The Trial'
      ],
      image: 'assets/images/books/image3.png',
    ),
  ];
}
