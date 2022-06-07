class Message {
  final int id;
  final int senderId;
  final int receiverId;
  final String message;
  final DateTime date;

  Message({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.date,
  });
}
