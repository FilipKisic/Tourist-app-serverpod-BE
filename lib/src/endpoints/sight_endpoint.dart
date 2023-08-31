import 'package:serverpod/serverpod.dart';
import 'package:tourist_backend_server/src/generated/protocol.dart';

class SightEndpoint extends Endpoint {
  Future<void> insertSight(final Session session, final Sight sight) =>
      Sight.insert(session, sight);

  Future<List<Sight>> getAllSights(final Session session) =>
      Sight.find(session, orderBy: Sight.t.id);
}
