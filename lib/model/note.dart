final String tableNotes = 'notes';

class NoteFields {
  static final List<String> values = [
    //adicionar todos os campos
    id, isImportant, number, title, description, time
  ];

  static final String id = '_id';
  static final String isImportant = 'isImporant';
  static final String number = 'number';
  static final String title = 'title';
  static final String description = 'description';
  static final String time = 'time';
}

class Note {
  final int? id;
  final bool isImportant;
  final int number;
  final String title;
  final String description;
  final DateTime createdTime;

  const Note({
    this.id,
    required this.isImportant,
    required this.number,
    required this.title,
    required this.description,
    required this.createdTime,
  });

  Note copy({
    int? id,
    bool? isImportant,
    int? number,
    String? title,
    String? description,
    DateTime? createdTime,
  }) =>
      Note(
        id: id ?? this.id,
        isImportant: isImportant ?? this.isImportant,
        number: number ?? this.number,
        title: title ?? this.title,
        description: description ?? this.description,
        createdTime: createdTime ?? this.createdTime,
      );

  static Note fromJson(Map<String, Object?> json) => Note(
        id: json[NoteFields.id] as int?,
        isImportant: json[NoteFields.isImportant] == 1,
        number: json[NoteFields.number] as int,
        title: json[NoteFields.title] as String,
        description: json[NoteFields.description] as String,
        createdTime: DateTime.parse(json[NoteFields.time] as String),
      );

  //Convertendo para .json

  Map<String, Object?> toJson() => {
        NoteFields.id: id,
        NoteFields.title: title,
        NoteFields.isImportant:
            isImportant ? 1 : 0, //ternário para converter para string
        NoteFields.number: number,
        NoteFields.description: description,
        NoteFields.time: createdTime.toIso8601String(),
      };
}
