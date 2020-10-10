class User {
  String nom;
  String prenom;
  String pseudo;
  String dateNaiss;
  String numeroUnity;
  String photo;
  String paysOrigine;
  String paysResidence;
  String adresseComplete;
  String categorieUser;
  String whatsapp;
  String email;
  String aboutme;
  String emailVerifiedAt;
  String password;
  String rememberToken;
  String createdAt;
  String updatedAt;

  User(
      {this.nom,
      this.prenom,
      this.pseudo,
      this.dateNaiss,
      this.numeroUnity,
      this.photo,
      this.paysOrigine,
      this.paysResidence,
      this.adresseComplete,
      this.categorieUser,
      this.whatsapp,
      this.email,
      this.aboutme,
      this.emailVerifiedAt,
      this.password,
      this.rememberToken,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    nom = json['nom'];
    prenom = json['prenom'];
    pseudo = json['pseudo'];
    dateNaiss = json['date_naiss'];
    numeroUnity = json['numero_unity'];
    photo = json['photo'];
    paysOrigine = json['pays_origine'];
    paysResidence = json['pays_residence'];
    adresseComplete = json['adresse_complete'];
    categorieUser = json['categorie_user'];
    whatsapp = json['whatsapp'];
    email = json['email'];
    aboutme = json['aboutme'];
    emailVerifiedAt = json['email_verified_at'];
    password = json['password'];
    rememberToken = json['remember_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nom'] = this.nom;
    data['prenom'] = this.prenom;
    data['pseudo'] = this.pseudo;
    data['date_naiss'] = this.dateNaiss;
    data['numero_unity'] = this.numeroUnity;
    data['photo'] = this.photo;
    data['pays_origine'] = this.paysOrigine;
    data['pays_residence'] = this.paysResidence;
    data['adresse_complete'] = this.adresseComplete;
    data['categorie_user'] = this.categorieUser;
    data['whatsapp'] = this.whatsapp;
    data['email'] = this.email;
    data['aboutme'] = this.aboutme;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['password'] = this.password;
    data['remember_token'] = this.rememberToken;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}