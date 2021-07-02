// races.dart

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:strava_flutter/error_codes.dart' as error;
import 'package:strava_flutter/globals.dart' as globals;
import 'package:strava_flutter/models/fault/fault.dart';
import 'package:strava_flutter/models/running_race/running_race.dart';

abstract class Races {
  /// getRunningRacebyId
  ///
  /// Scope needed: none
  ///
  /// Answer has route_ids [int]
  Future<RunningRace> getRunningRaceById(String id) async {
    RunningRace returnRace = RunningRace();

    globals.displayInfo('Entering getRunningRaceById');

    final _header = globals.createHeader();

    if (_header.containsKey('88') == false) {
      final reqRace = 'https://www.strava.com/api/v3/running_races/$id';

      final rep = await http.get(Uri.parse(reqRace), headers: _header);
      if (rep.statusCode == 200) {
        globals.displayInfo('Race info ${rep.body}');
        final jsonResponse = json.decode(rep.body) as Map<String, dynamic>?;

        if (jsonResponse != null) {
          returnRace = RunningRace.fromJson(jsonResponse);
        } else {
          globals.displayInfo('problem in getRunningRaceById request');
        }
      }
      returnRace.fault = globals.errorCheck(rep.statusCode, rep.reasonPhrase);
    } else {
      globals.displayInfo('Token not yet known');
      returnRace.fault = Fault(error.statusTokenNotKnownYet, 'Token not yet known');
    }

    return returnRace;
  }

  /// Scope needed: none
  /// Answer has NO route_ids for the moment
  Future<List<RunningRace>> getRunningRaces(String year) async {
    List<RunningRace> returnListRaces = <RunningRace>[];

    globals.displayInfo('Entering getRunningRaces');

    final _header = globals.createHeader();

    if (_header.containsKey('88') == false) {
      final reqList = 'https://www.strava.com/api/v3/running_races?year=$year';

      final rep = await http.get(Uri.parse(reqList), headers: _header);
      if (rep.statusCode == 200) {
        // globals.displayInfo('List races info ${rep.body}');
        final jsonResponse = json.decode(rep.body);

        if (jsonResponse != null) {
          final _listRaces = <RunningRace>[];

          jsonResponse.forEach((Map<String, dynamic> element) {
            final _race = RunningRace.fromJson(element);
            globals
                .displayInfo('${_race.name} ,  ${_race.startDateLocal}    ${_race.id}');
            _listRaces.add(_race);
          });

          returnListRaces = _listRaces;
        } else {
          globals.displayInfo('problem in getRunningRaces request');
        }
      }
      returnListRaces[0].fault = globals.errorCheck(rep.statusCode, rep.reasonPhrase);
    } else {
      globals.displayInfo('Token not yet known');
      returnListRaces[0].fault =
          Fault(error.statusTokenNotKnownYet, 'Token not yet known');
    }
    return returnListRaces;
  }
}
