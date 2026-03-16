class ResumeCardModel {
  final String name;
  final String title;
  final String location;
  final String photoUrl;
  final List<ExperienceModel> experiences;

  ResumeCardModel({
    required this.name,
    required this.title,
    required this.location,
    required this.photoUrl,
    required this.experiences,
  });

  factory ResumeCardModel.fromMap(Map<String, dynamic> map) {
    return ResumeCardModel(
      name: map['name'] as String? ?? '',
      title: map['title'] as String? ?? '',
      location: map['location'] as String? ?? '',
      photoUrl: map['photoUrl'] as String? ?? '',
      experiences: (map['experiences'] as List<dynamic>? ?? [])
          .map((e) => ExperienceModel.fromMap(e))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'title': title,
      'location': location,
      'photoUrl': photoUrl,
      'experiences': experiences.map((e) => e.toMap()).toList(),
    };
  }
}

class ExperienceModel {
  final String period;
  final String role;
  final String company;
  final String description;

  const ExperienceModel({
    required this.period,
    required this.role,
    required this.company,
    required this.description,
  });

  factory ExperienceModel.fromMap(Map<String, dynamic> map) {
    return ExperienceModel(
      period: map['period'] as String? ?? '',
      role: map['role'] as String? ?? '',
      company: map['company'] as String? ?? '',
      description: map['description'] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'period': period,
      'role': role,
      'company': company,
      'description': description,
    };
  }
}