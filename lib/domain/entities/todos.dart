class Todos {
  final String id;
  final String description;
  final DateTime? completedAt;

  Todos({required this.id, required this.description, this.completedAt});

  Todos copyWith({
    String? id,
    String? description,
    DateTime? completedAt,
  }) =>
      Todos(
        id: id ?? this.id,
        description: description ?? this.description,
        completedAt: completedAt ?? this.completedAt,
      );

  bool get done {
    return completedAt == null;
  }
}
