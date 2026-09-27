class TransactionModel {
  final String title, date, amount;
  final bool isWithDrawal;

  const new({
    required this.title,
    required this.date,
    required this.amount,
    required this.isWithDrawal,
  });
}
