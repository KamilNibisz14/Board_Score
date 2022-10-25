
class PlayerData{
  final String name;
  int points = 0;
  PlayerData({required this.name});
}
class GameTable{
  final String id;
  String winner = '';
  final List<PlayerData> players = [];
  GameTable({required this.id,});
}