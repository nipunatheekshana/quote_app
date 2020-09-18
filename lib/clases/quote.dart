class Quote {
  String text;
  String author;

  // Quote(String text, String author){
  //   this.text=text;
  //   this.author=author;
  // }
  //above is the way of making a constructor without named parameters

  Quote(
      {this.author,
      this.text}); // this is constructor wit named parameters . do that by adding curly braces around the parameters

}
