class DisplayQuestions {
  const DisplayQuestions(this.text, this.answers);

  final String text;
  final List<String> answers;
   List<String> shuffleQuestions() {
    final shuffleQ = List.of(answers);
    shuffleQ.shuffle();
    return shuffleQ;
    //this shuffle affect original list also so first we copied original list by using List.of() and then we performed action
  }
}
