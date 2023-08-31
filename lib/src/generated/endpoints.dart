/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/sight_endpoint.dart' as _i2;
import 'package:tourist_backend_server/src/generated/sight.dart' as _i3;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'sight': _i2.SightEndpoint()
        ..initialize(
          server,
          'sight',
          null,
        )
    };
    connectors['sight'] = _i1.EndpointConnector(
      name: 'sight',
      endpoint: endpoints['sight']!,
      methodConnectors: {
        'insertSight': _i1.MethodConnector(
          name: 'insertSight',
          params: {
            'sight': _i1.ParameterDescription(
              name: 'sight',
              type: _i1.getType<_i3.Sight>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sight'] as _i2.SightEndpoint).insertSight(
            session,
            params['sight'],
          ),
        ),
        'getAllSights': _i1.MethodConnector(
          name: 'getAllSights',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sight'] as _i2.SightEndpoint).getAllSights(session),
        ),
      },
    );
  }
}
