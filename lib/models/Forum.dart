class Forum {
  final int id;
  final String nome;
  final int qtdeUsuarios;
  final double avaliacao;
  final int qtdeComentarios;
  final String descricao;
  final String logo;

  Forum(
      {this.id,
      this.nome,
      this.qtdeUsuarios,
      this.avaliacao,
      this.qtdeComentarios,
      this.descricao,
      this.logo});
}

List<Forum> forum = [
  Forum(
    id: 1,
    nome: "Educação financeira na escola",
    qtdeUsuarios: 239,
    avaliacao: 8.9,
    qtdeComentarios: 2343,
    descricao:
        "Fórum de ajuda de como educar as finaças com os filhos nas escolas",
    logo: "assets/images/forum1.jpeg",
  ),
  Forum(
    id: 2,
    nome: "Saúde Financeira",
    qtdeUsuarios: 802,
    avaliacao: 9.7,
    qtdeComentarios: 49873,
    descricao:
        "Fórum de ajuda com outras pessoas que conseguiram arrumar a sua vida financeira.",
    logo: "assets/images/forum2.jpeg",
  ),
  Forum(
    id: 3,
    nome: "Organização Financeira",
    qtdeUsuarios: 150,
    avaliacao: 9.3,
    qtdeComentarios: 1286,
    descricao: "Fórum de ajuda a organizar a sua vida financeira.",
    logo: "assets/images/forum3.jpeg",
  ),
  Forum(
    id: 4,
    nome: "Investimentos",
    qtdeUsuarios: 30,
    avaliacao: 7.8,
    qtdeComentarios: 30,
    descricao: "Fórum de ajuda como investir o seu dinheiro.",
    logo: "assets/images/forum4.jpeg",
  ),
];
