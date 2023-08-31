/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Sight extends _i1.TableRow {
  Sight({
    int? id,
    required this.name,
    required this.description,
    required this.address,
    required this.lat,
    required this.lng,
    required this.rating,
  }) : super(id);

  factory Sight.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Sight(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      address: serializationManager
          .deserialize<String>(jsonSerialization['address']),
      lat: serializationManager.deserialize<double>(jsonSerialization['lat']),
      lng: serializationManager.deserialize<double>(jsonSerialization['lng']),
      rating:
          serializationManager.deserialize<int>(jsonSerialization['rating']),
    );
  }

  static final t = SightTable();

  String name;

  String description;

  String address;

  double lat;

  double lng;

  int rating;

  @override
  String get tableName => 'sight';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'address': address,
      'lat': lat,
      'lng': lng,
      'rating': rating,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'address': address,
      'lat': lat,
      'lng': lng,
      'rating': rating,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'address': address,
      'lat': lat,
      'lng': lng,
      'rating': rating,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'description':
        description = value;
        return;
      case 'address':
        address = value;
        return;
      case 'lat':
        lat = value;
        return;
      case 'lng':
        lng = value;
        return;
      case 'rating':
        rating = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Sight>> find(
    _i1.Session session, {
    SightExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Sight>(
      where: where != null ? where(Sight.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Sight?> findSingleRow(
    _i1.Session session, {
    SightExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Sight>(
      where: where != null ? where(Sight.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Sight?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Sight>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required SightExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Sight>(
      where: where(Sight.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Sight row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Sight row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Sight row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    SightExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Sight>(
      where: where != null ? where(Sight.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SightExpressionBuilder = _i1.Expression Function(SightTable);

class SightTable extends _i1.Table {
  SightTable() : super(tableName: 'sight');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final description = _i1.ColumnString('description');

  final address = _i1.ColumnString('address');

  final lat = _i1.ColumnDouble('lat');

  final lng = _i1.ColumnDouble('lng');

  final rating = _i1.ColumnInt('rating');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        description,
        address,
        lat,
        lng,
        rating,
      ];
}

@Deprecated('Use SightTable.t instead.')
SightTable tSight = SightTable();
