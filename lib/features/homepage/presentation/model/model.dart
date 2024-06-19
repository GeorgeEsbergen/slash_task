class Data {
  Data({
    required this.bestSelling,
    required this.newArrival,
    required this.recommendedForYou,
  });
  late final List<BestSelling> bestSelling;
  late final List<NewArrival> newArrival;
  late final List<RecommendedForYou> recommendedForYou;

  Data.fromJson(Map<String, dynamic> json) {
    bestSelling = List.from(json['bestSelling'])
        .map((e) => BestSelling.fromJson(e))
        .toList();
    newArrival = List.from(json['newArrival'])
        .map((e) => NewArrival.fromJson(e))
        .toList();
    recommendedForYou = List.from(json['recommendedForYou'])
        .map((e) => RecommendedForYou.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['bestSelling'] = bestSelling.map((e) => e.toJson()).toList();
    _data['newArrival'] = newArrival.map((e) => e.toJson()).toList();
    _data['recommendedForYou'] =
        recommendedForYou.map((e) => e.toJson()).toList();
    return _data;
  }
}

class BestSelling {
  BestSelling({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });
  late final int id;
  late final String name;
  late final double price;
  late final String image;

  BestSelling.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['price'] = price;
    _data['image'] = image;
    return _data;
  }
}

class NewArrival {
  NewArrival({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });
  late final int id;
  late final String name;
  late final double price;
  late final String image;

  NewArrival.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['price'] = price;
    _data['image'] = image;
    return _data;
  }
}

class RecommendedForYou {
  RecommendedForYou({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });
  late final int id;
  late final String name;
  late final double price;
  late final String image;

  RecommendedForYou.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['price'] = price;
    _data['image'] = image;
    return _data;
  }
}
