// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewsEntityAdapter extends TypeAdapter<NewsEntity> {
  @override
  final int typeId = 0;

  @override
  NewsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewsEntity(
      title: fields[0] as String,
      description: fields[1] as String,
      pubDate: fields[2] as DateTime,
      imageUrls: (fields[3] as List).cast<String>(),
      url: fields[4] as String,
      content: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, NewsEntity obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.pubDate)
      ..writeByte(3)
      ..write(obj.imageUrls)
      ..writeByte(4)
      ..write(obj.url)
      ..writeByte(5)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
