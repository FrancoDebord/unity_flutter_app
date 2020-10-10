class GroupeMessage {
  int id;
  String nomGroupe;
  bool active;
  int creatorId;
  String description;
  String icone;
  String dateCreation;
  String createdAt;
  String updatedAt;

  GroupeMessage(
      {this.id,
      this.nomGroupe,
      this.active,
      this.creatorId,
      this.description,
      this.icone,
      this.dateCreation,
      this.createdAt,
      this.updatedAt});

  GroupeMessage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomGroupe = json['nom_groupe'];
    active = json['active'];
    creatorId = json['creator_id'];
    description = json['description'];
    icone = json['icone'];
    dateCreation = json['date_creation'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nom_groupe'] = this.nomGroupe;
    data['active'] = this.active;
    data['creator_id'] = this.creatorId;
    data['description'] = this.description;
    data['icone'] = this.icone;
    data['date_creation'] = this.dateCreation;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}