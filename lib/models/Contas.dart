class Contas {
  final String bank;
  final String accountId;
  final double saldo;
  final String nickName;

  Contas({this.bank, this.accountId, this.saldo, this.nickName});
}

final List<Contas> contas = [
  Contas(
    bank: "banco1",
    accountId: "5f1865dd7af45c38b6659a36",
    saldo: 6807.64,
    nickName: "xxxx1001",
  ),
  Contas(
    bank: "banco1",
    accountId: "5f1865df7af45c38b6659cc8",
    saldo: 7136.09,
    nickName: "xxxx1003",
  ),
  Contas(
    bank: "banco1",
    accountId: "5f1865de7af45c38b6659b7f",
    saldo: 6807.64,
    nickName: "xxxx1002",
  ),
  Contas(
    bank: "banco2",
    accountId: "5f186994a807e83a2e429e30",
    saldo: 7568.37,
    nickName: "xxxx1001",
  ),
  Contas(
    bank: "banco2",
    accountId: "5f186995a807e83a2e429f79",
    saldo: 7299.89,
    nickName: "xxxx1002",
  ),
  Contas(
    bank: "banco2",
    accountId: "5f186996a807e83a2e42a0c2",
    saldo: 7024.50,
    nickName: "xxxx1003",
  ),
];
