class Dicas {
  final int id, numOfRatings, criticsReview, metascoreRating;
  final double rating;
  final String title, poster, backdrop;

  Dicas(
      {this.id,
      this.numOfRatings,
      this.criticsReview,
      this.metascoreRating,
      this.rating,
      this.title,
      this.poster,
      this.backdrop});
}

List<Dicas> dicas = [
  Dicas(
    id: 1,
    numOfRatings: 150212,
    criticsReview: 50,
    metascoreRating: 76,
    rating: 7.3,
    title: "Como econimizar seu dinheiro",
    poster: "assets/images/poster_1.jpg",
    backdrop: "assets/images/backdrop_1.jpg",
  ),
  Dicas(
    id: 2,
    numOfRatings: 150212,
    criticsReview: 80,
    metascoreRating: 90,
    rating: 8.5,
    title: "UniBra Bradesco na Real",
    poster: "assets/images/poster_2.png",
    backdrop: "assets/images/backdrop_2.png",
  ),
  Dicas(
    id: 3,
    numOfRatings: 1212,
    criticsReview: 20,
    metascoreRating: 10,
    rating: 6.5,
    title: "Como sair das dívidas",
    poster: "assets/images/poster_3.jpeg",
    backdrop: "assets/images/backdrop_3.jpeg",
  ),
];
