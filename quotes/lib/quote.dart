class Quote {

  // Properties
  String text;
  String author;

  // Constructor
  // If we want to use name params, we put curly braces inside params
  Quote({this.text, this.author});

  // Otherwise use normal constructor
  Quo(String text, String author) {
    this.text = text;
    this.author = author;
  }
}
