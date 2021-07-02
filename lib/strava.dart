import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:strava_flutter/api/activities.dart';
import 'package:strava_flutter/api/athletes.dart';
import 'package:strava_flutter/api/clubs.dart';
import 'package:strava_flutter/api/o_auth.dart';
import 'package:strava_flutter/api/races.dart';
import 'package:strava_flutter/api/segment_efforts.dart';
import 'package:strava_flutter/api/segments.dart';
import 'package:strava_flutter/api/upload.dart';
import 'package:strava_flutter/error_codes.dart' as error;
import 'package:strava_flutter/globals.dart' as globals;
import 'package:strava_flutter/models/fault/fault.dart';
import 'package:strava_flutter/models/gear/gear.dart';

/// Initialize the Strava API
///  clientID: ID of your Strava app
/// redirectURL: url that will be called after Strava authorize your app
/// prompt: to choose to ask Strava always to authenticate or only when needed (with 'auto')
/// scope: Strava scope check https://developers.strava.com/docs/oauth-updates/
class Strava
    with
        Upload,
        Activities,
        Auth,
        Clubs,
        Segments,
        SegmentEfforts,
        Athletes,
        Races {
  String? secret;

  /// Initialize the Strava class
  /// Needed to call Strava API
  ///
  /// secretKey is the key found in strava settings my Application (secret key)
  /// Set isIndebug to true to get debug print in strava API
  Strava(bool isInDebug, this.secret) {
    globals.isInDebug = isInDebug;
  }

  /// Scope needed: any
  /// Give answer only if id is related to logged athlete
  ///
  Future<Gear> getGearById(String? id) async {
    Gear returnGear = Gear();

    globals.displayInfo('Entering getGearById');

    final _header = globals.createHeader();

    if (_header.containsKey('88') == false) {
      final reqGear = 'https://www.strava.com/api/v3/gear/$id';
      final rep = await http.get(Uri.parse(reqGear), headers: _header);

      if (rep.statusCode == 200) {
        globals.displayInfo(rep.statusCode.toString());
        globals.displayInfo(' ${rep.body}');
        final Map<String, dynamic> jsonResponse = json.decode(rep.body) as Map<String, dynamic>;

        final Gear _gear = Gear.fromJson(jsonResponse);
        _gear.fault = Fault(88, '');
        globals.displayInfo(_gear.description);
        _gear.fault?.statusCode = error.statusOk;
        returnGear = _gear;
      } else {
        globals.displayInfo('Problem in getGearById');
      }
      returnGear.fault = globals.errorCheck(rep.statusCode, rep.reasonPhrase);
    }

    return returnGear;
  }

  void dispose() {
    onCodeReceived.close();
  }
}
