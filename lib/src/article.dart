class Article {
  final String text;
  final String domain;
  final String by;
  final String age;
  final int score;
  final int commentsCount;

  const Article(
      {this.text,
      this.domain,
      this.by,
      this.age,
      this.score,
      this.commentsCount});
}

final articles = [
  Article(
    text: "Google",
    domain: "google.com",
    by: "by1",
    age: "age1",
    score: 1,
    commentsCount: 1,
  ),
  Article(
    text: "Facebook",
    domain: "facebook.com",
    by: "by2",
    age: "age2",
    score: 2,
    commentsCount: 2,
  ),
  Article(
    text: "Yahoo",
    domain: "yahoo.com",
    by: "by3",
    age: "age3",
    score: 3,
    commentsCount: 3,
  ),
  Article(
    text: "Twitter",
    domain: "twitter.com",
    by: "by4",
    age: "age4",
    score: 4,
    commentsCount: 4,
  ),
  Article(
    text: "Amazon",
    domain: "amazon.com",
    by: "by5",
    age: "age5",
    score: 5,
    commentsCount: 5,
  ),
  Article(
    text: "Nike",
    domain: "nike.com",
    by: "by6",
    age: "age6",
    score: 6,
    commentsCount: 6,
  ),
  Article(
    text: "Instagram",
    domain: "instagram.com",
    by: "by7",
    age: "age7",
    score: 7,
    commentsCount: 7,
  ),
  Article(
    text: "Flipkart",
    domain: "flipkart.com",
    by: "by8",
    age: "age8",
    score: 8,
    commentsCount: 8,
  ),
  Article(
    text: "Ebay",
    domain: "ebay.com",
    by: "by9",
    age: "age9",
    score: 9,
    commentsCount: 9,
  ),
  Article(
    text: "Linkedin",
    domain: "linkedin.com",
    by: "by9",
    age: "age9",
    score: 10,
    commentsCount: 10,
  ),
  Article(
    text: "TutorialPoint",
    domain: "tutorialpoint.com",
    by: "by11",
    age: "age11",
    score: 11,
    commentsCount: 11,
  ),
  Article(
    text: "Geekforgeek",
    domain: "geekforgeeks.org",
    by: "by9",
    age: "age9",
    score: 12,
    commentsCount: 12,
  ),
];
