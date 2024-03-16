// Interface for borrowable items
abstract class Borrowable {
  void borrow();
}

// Base class for books
class Book {
  final String title;
  final String author;

  Book(this.title, this.author);

  void borrow() {
    print("Borrowing book: $title by $author");
  }

  void displayDetails() {
    print("Title: $title, Author: $author");
  }
}

// Class for audiobooks inheriting from Book
class AudioBook extends Book implements Borrowable {
  final int duration;

  Audiobook(String title, String author, this.duration) : super(title, author);

  @override
  void borrow() {
    print("Borrowing audiobook: $title by $author (duration: $duration minutes)");
  }

  @override
  void displayDetails() {
    super.displayDetails();
    print("Duration: $duration minutes");
  }
}

// Function to load books from a file (replace "books.txt" with your file path)
List<Book> loadBooksFromFile(String filePath) {
  List<Book> books = [];
  final file = File(filePath);
  final lines = file.readAsLinesSync();
  for (var line in lines) {
    final parts = line.split(',');
    if (parts.length == 3) {
      final title = parts[0];
      final author = parts[1];
      final duration = int.tryParse(parts[2]);
      if (duration != null) {
        books.add(Audiobook(title, author, duration));
      } else {
        books.add(Book(title, author));
      }
    }
  }
  return books;
}

void main() {
  // Load books from file (replace "books.txt" with your file path)
  final books = loadBooksFromFile("books.txt");

  // Display book details
  for (var book in books) {
    book.displayDetails();
  }

  // Borrow books
  for (var book in books) {
    book.borrow();
  }
}
