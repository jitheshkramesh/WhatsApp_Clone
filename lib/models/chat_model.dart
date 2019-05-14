class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.avatarUrl, this.message, this.name, this.time});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "Jithesh",
      message: "Hi Flutter",
      time: "10.10",
      avatarUrl: "http://dharasoft.com/img/port01.jpg"),
  new ChatModel(
      name: "Roopa",
      message: "Hi Flutter",
      time: "10.15",
      avatarUrl: "http://dharasoft.com/img/port02.jpg"),
  new ChatModel(
      name: "Dhara",
      message: "Hi Flutter",
      time: "10.20",
      avatarUrl: "http://dharasoft.com/img/port03.jpg"),
  new ChatModel(
      name: "Thanka",
      message: "Hi Flutter",
      time: "10.30",
      avatarUrl: "http://dharasoft.com/img/port04.jpg"),
  new ChatModel(
      name: "Midhesh",
      message: "Hi Flutter",
      time: "10.40",
      avatarUrl: "http://dharasoft.com/img/port05.jpg"),
  new ChatModel(
      name: "Jiya",
      message: "Hi Flutter",
      time: "10.50",
      avatarUrl: "http://dharasoft.com/img/port06.jpg"),
  new ChatModel(
      name: "Sreepath",
      message: "Hi Flutter",
      time: "11.10",
      avatarUrl: "http://dharasoft.com/img/port01.jpg")
];
