// ignore_for_file: public_member_api_docs, sort_constructors_first
class EmployeeModel {
  final String id;
  final String name;
  final String job;
  final DateTime admissionDate;
  final String phone;
  final String image;

  // Construtor
  EmployeeModel({
    required this.id,
    required this.name,
    required this.job,
    required this.admissionDate,
    required this.phone,
    required this.image,
  });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) {
    return EmployeeModel(
      id: json['id'],
      name: json['name'],
      job: json['job'],
      admissionDate: DateTime.parse(json['admission_date']),
      phone: json['phone'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'job': job,
      'admission_date': admissionDate.toIso8601String(),
      'phone': phone,
      'image': image,
    };
  }

  @override
  String toString() {
    return 'EmployeeModel(id: $id, name: $name, job: $job, admissionDate: $admissionDate, phone: $phone, image: $image)';
  }
}
