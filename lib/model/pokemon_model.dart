class Pokemon {
  final int? id;
  final String? num;
  final String? name;
  final String? img;
  final List<String>? type;
  final String? height;
  final String? weight;
  final String? candy;
  final int? candyCount;
  final String? egg;
  final String? spawnTime;
  final List<double>? multipliers;
  final List<String>? weaknesses;
  final List<Pokemon>? prevEvolution;
  final List<Pokemon>? nextEvolution;

  Pokemon({
    this.id,
    this.num,
    this.name,
    this.img,
    this.type,
    this.height,
    this.weight,
    this.candy,
    this.candyCount,
    this.egg,
    this.spawnTime,
    this.multipliers,
    this.weaknesses,
    this.prevEvolution,
    this.nextEvolution,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'],
      num: json['num'],
      name: json['name'],
      img: json['img'],
      type: json['type']?.cast<String>(),
      height: json['height'],
      weight: json['weight'],
      candy: json['candy'],
      candyCount: json['candy_count'],
      egg: json['egg'],
      spawnTime: json['spawn_time'],
      multipliers: json['multipliers']?.cast<double>(),
      weaknesses: json['weaknesses']?.cast<String>(),
      prevEvolution: (json['prev_evolution'] as List<dynamic>?)
          ?.map((e) => Pokemon.fromJson(e))
          .toList(),
      nextEvolution: (json['next_evolution'] as List<dynamic>?)
          ?.map((e) => Pokemon.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['num'] = this.num;
    data['name'] = this.name;
    data['img'] = this.img;
    data['type'] = this.type;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['candy'] = this.candy;
    data['candy_count'] = this.candyCount;
    data['egg'] = this.egg;
    data['spawn_time'] = this.spawnTime;
    data['multipliers'] = this.multipliers;
    data['weaknesses'] = this.weaknesses;
    if (this.prevEvolution != null) {
      data['prev_evolution'] =
          this.prevEvolution?.map((e) => e.toJson()).toList();
    }
    if (this.nextEvolution != null) {
      data['next_evolution'] =
          this.nextEvolution?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}
