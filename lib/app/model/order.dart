class OrderModel {
  static const ID = "id";
  static const USER_ID = "userId";
  static const AMOUNT = "amount";
  static const STATUS = "status";
  static const CREATED_AT = "createdAt";
  static const CART = "cart";

  String id;
  String userId;
  String amount;
  String status;
  String createdAt;
  List cart;

  OrderModel(
      {this.id,
      this.userId,
      this.amount,
      this.status,
      this.createdAt,
      this.cart});

  OrderModel.fromMap(Map data) {
    id = data[ID];
    createdAt = data[CREATED_AT];
    userId = data[USER_ID];
    amount = data[AMOUNT];
    status = data[STATUS];
    cart = data[CART];
  }
}
