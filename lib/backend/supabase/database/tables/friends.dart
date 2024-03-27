import '../database.dart';

class FriendsTable extends SupabaseTable<FriendsRow> {
  @override
  String get tableName => 'friends';

  @override
  FriendsRow createRow(Map<String, dynamic> data) => FriendsRow(data);
}

class FriendsRow extends SupabaseDataRow {
  FriendsRow(super.data);

  @override
  SupabaseTable get table => FriendsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get classField => getField<String>('class');
  set classField(String? value) => setField<String>('class', value);

  int? get age => getField<int>('age');
  set age(int? value) => setField<int>('age', value);
}
