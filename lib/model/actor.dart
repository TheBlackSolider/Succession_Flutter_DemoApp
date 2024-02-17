class Actor {
  final String imageLink;
  final String actorName;
  final int age;
  final String dOB;
  final String pOB;
  final String works;
  final String trophies;
  final int noChildrens;

  Actor({
    required this.imageLink,
    required this.actorName,
    required this.age,
    required this.dOB,
    required this.pOB,
    required this.works,
    required this.trophies,
    required this.noChildrens,
  });

  factory Actor.fromJson(Map<String, dynamic> json) => Actor(
        imageLink: json["image_link"],
        actorName: json["actor_name"],
        age: json["AGE"],
        dOB: json["D.O.B"],
        pOB: json["P.O.B"],
        works: json["WORKS"],
        trophies: json["TROPHIES"],
        noChildrens: json["NO.CHILDRENS"],
      );

  Map<String, dynamic> toJson() => {
        "image_link": imageLink,
        "actor_name": actorName,
        "AGE": age,
        "D.O.B": dOB,
        "P.O.B": pOB,
        "WORKS": works,
        "TROPHIES": trophies,
        "NO.CHILDRENS": noChildrens,
      };
}
