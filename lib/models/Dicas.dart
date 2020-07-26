class Dicas {
  final int id, numOfRatings, criticsReview, metascoreRating;
  final double rating;
  final String title, poster, backdrop, description, url;

  Dicas({
    this.id,
    this.numOfRatings,
    this.criticsReview,
    this.metascoreRating,
    this.rating,
    this.title,
    this.poster,
    this.backdrop,
    this.description,
    this.url,
  });
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
    description:
        "Seja em tempos de bonança ou de crise, muita gente precisa aprender como economizar dinheiro. Afinal, quem não gostaria de fechar o mês no azul e ainda conseguir manter uma reserva de emergência? Mas qual é o melhor jeito de guardar dinheiro? Essa busca constante é legítima, e nada tem que ver com ser sovina - ou, numa linguagem mais popular, ser “pão duro”. Afinal, nossa relação com o dinheiro se estende para outras esferas da vida, e buscar uma vida financeira equilibrada é desejar uma vida melhor.",
    url: "https://blog.rico.com.vc/como-economizar-dinheiro",
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
    description:
        "Bradesco e Saint Paul, em parceria inédita, lançam série sobre finanças pessoais. A série \"Na Real\" aborda os mais diversos temas de educação financeira com a curadoria e a didática dos professores de uma das melhores escolas de finanças do mundo para ajudar os brasileiros a aprender como manter uma relação saudável com seu dinheiro e como contar com o apoio de uma grande instituição financeira nesse aprendizado.",
    url: "https://hub.lit.com.br/bradesco-na-real-financas-pessoais",
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
    description:
        "Para sair das dívidas procure se manter tranquilo, entrar em desespero não vai ajudar e pode até dificultar o planejamento para resolver o problema. Quem está nessa situação sabe como pode ser estressante. Parece que tudo tem um peso a mais e que a preocupação não vai embora nunca. Então vale a pena parar um pouco, respirar e tomar coragem para resolver essa questão de uma vez por todas. Se esse é o seu caso ou se você quer evitar que seja, pensamos em algumas dicas para te ajudar.",
    url: "https://blog.firgun.com.br/como-sair-das-dividas/",
  ),
];
