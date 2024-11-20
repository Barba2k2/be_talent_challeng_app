class Employee {
  final String id;
  final String name;
  final String position;
  final String admissionDate;
  final String phone;
  final String? imageUrl;

  const Employee({
    required this.id,
    required this.name,
    required this.position,
    required this.admissionDate,
    required this.phone,
    this.imageUrl,
  });

  factory Employee.fromMap(Map<String, dynamic> map) {
    final id = map['id'];
    return Employee(
      id: id is int ? id.toString() : (id as String),
      name: map['name'] as String,
      position: map['job'] as String,
      admissionDate: map['admission_date'] as String,
      phone: map['phone'] as String,
      imageUrl: map['image'] as String?,
    );
  }

  factory Employee.fromJson(dynamic json) {
    if (json is! Map<String, dynamic>) {
      throw FormatException('Invalid JSON format for Employee');
    }
    return Employee.fromMap(json);
  }

  String get formattedAdmissionDate {
    final date = DateTime.parse(admissionDate);
    return '${date.day.toString().padLeft(2, '0')}/'
        '${date.month.toString().padLeft(2, '0')}/'
        '${date.year}';
  }

  String get formattedPhone {
    if (phone.length < 13) return phone;
    return '${phone.substring(0, 2)} ${phone.substring(2, 7)}-${phone.substring(7)}';
  }
}
