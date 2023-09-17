class ExercisesModel {
  String? bodyPart;
  String? equipment;
  String? gifUrl;
  String? id;
  String? name;
  String? target;

  ExercisesModel({
    this.bodyPart,
    this.equipment,
    this.gifUrl,
    this.id,
    this.name,
    this.target,
  });
  ExercisesModel.fromJson(Map<String, dynamic> json) {
    bodyPart = json['bodyPart']?.toString();
    equipment = json['equipment']?.toString();
    gifUrl = json['gifUrl']?.toString();
    id = json['id']?.toString();
    name = json['name']?.toString();
    target = json['target']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['bodyPart'] = bodyPart;
    data['equipment'] = equipment;
    data['gifUrl'] = gifUrl;
    data['id'] = id;
    data['name'] = name;
    data['target'] = target;
    return data;
  }
}
