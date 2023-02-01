import 'package:flutter/material.dart';

abstract class TextManipulationService {
  static String takeLetters({
    required String input,
    required int lettersCount,
    bool withSeeMoreIndicator = false,
    bool spaceBeforeSeeMore = false,
  }) {
    Characters characters = Characters(input);
    if (lettersCount > input.length || characters.isEmpty || lettersCount < 0) {
      return input;
    }
    // throw StateError("Something Occurred");
    return characters.take(lettersCount).string +
        (withSeeMoreIndicator ? (spaceBeforeSeeMore ? ' ...' : '...') : '');
  }

  static String capitalizeFirstLetterOfEachWord(String input) {
    return input
        .split(" ")
        .map((word) => capitalizeFirstLetter(word))
        .join(" ");
  }

  static String capitalizeFirstLetter(String input) {
    if (input.isEmpty) return input;
    return input[0].toUpperCase() + input.substring(1);
  }

  static String takeWords(
      {required String input, required int wordCount, bool fromEnd = false}) {
    assert(wordCount > 0, "Expected A Positive WordCount But Got $wordCount");
    List<String> words = input.split(' ');
    words = fromEnd ? List.from(words.reversed) : words;

    if (wordCount == words.length ||
        words.isEmpty ||
        input.isEmpty ||
        wordCount > words.length) {
      return input;
    }

    if (fromEnd) {
      List<String> fromEndList = [];
      for (var i = 0; i < wordCount; i++) {
        fromEndList.add(words[i]);
      }
      fromEndList = List.from(fromEndList.reversed);
      return fromEndList.map((e) => e).join(" ");
    }
    List<String> wordsToReturn = [];
    for (var i = 0; i < wordCount; i++) {
      wordsToReturn.add(words[i]);
    }
    return wordsToReturn.map((e) => e).join(" ");
  }
}
