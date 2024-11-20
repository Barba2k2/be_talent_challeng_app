class Employee {
  final String name;
  final String position;
  final String admissionDate;
  final String phone;
  final String? imageUrl;

  const Employee({
    required this.name,
    required this.position,
    required this.admissionDate,
    required this.phone,
    this.imageUrl,
  });
}
