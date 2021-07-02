import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:strava_flutter/error_codes.dart' as error;
import 'package:strava_flutter/globals.dart' as globals;
import 'package:strava_flutter/models/detailed_segment/detailed_segment.dart';
import 'package:strava_flutter/models/entries/entries.dart';
import 'package:strava_flutter/models/fault/fault.dart';
import 'package:strava_flutter/models/segment_leaderboard/segment_leaderboard.dart';
import 'package:strava_flutter/models/segments_list/segments_list.dart';

abstract class Segments {
  ///
  /// scope needed: read_all
  ///
  Future<DetailedSegment> getSegmentById(String id) async {
    DetailedSegment returnSeg = DetailedSegment();

    final _header = globals.createHeader();

    globals.displayInfo('Entering getSegById');

    if (_header.containsKey('88') == false) {
      final reqSeg = 'https://www.strava.com/api/v3/segments/$id';
      final rep = await http.get(Uri.parse(reqSeg), headers: _header);
      if (rep.statusCode == 200) {
        globals.displayInfo(rep.statusCode.toString());
        globals.displayInfo('Segment info ${rep.body}');
        final jsonResponse = json.decode(rep.body) as Map<String, dynamic>;

        final _seg = DetailedSegment.fromJson(jsonResponse);
        globals.displayInfo(_seg.name);

        returnSeg = _seg;
      } else {
        globals.displayInfo('problem in getSegById request');

        // 404 : segment not found
      }
    } else {
      globals.displayInfo('Token not yet known');
      returnSeg.fault = Fault(error.statusTokenNotKnownYet, 'Token not yet known');
    }
    return returnSeg;
  }

  ///
  /// Scope needed: read_all
  ///
  /// List of segments starred by the authenticated athlete
  ///
  /// Limited for the moment to the first 50 starred segments
  ///
  Future<SegmentsList?> getLoggedInAthleteStarredSegments() async {
    SegmentsList? returnList;

    returnList = SegmentsList();
    final _header = globals.createHeader();

    globals.displayInfo('Entering getLoggedInAthleteStarredSegments');
    print('_header: ${_header[0 as String]}');

    if (_header.containsKey('88') == false) {
      const reqSeg = 'https://www.strava.com/api/v3/segments/starred?page=1&per_page=50';
      final rep = await http.get(Uri.parse(reqSeg), headers: _header);
      if (rep.statusCode == 200) {
        globals.displayInfo(rep.statusCode.toString());
        globals.displayInfo('List starred segments  info ${rep.body}');
        // final parsedJson = json.decode(rep.body);
        returnList = SegmentsList.fromJson(json.decode(rep.body) as Map<String, dynamic>);
      } else {
        globals.displayInfo('problem in getLoggedInAthleteStarredSegments request');
        // Add a fault
        returnList = null;
      }
    } else {
      globals.displayInfo('Token not yet known');
      returnList.fault = Fault(error.statusTokenNotKnownYet, 'Token not yet known');
    }
    return returnList;
  }

  /// scoped needed: ?
  ///
  /// nbEntries: to limit the number of entries to retrieve.
  /// 0 means full list
  ///
  /// No check is done on the parameters
  ///
  /// gender value : M of F
  ///
  /// age_group and weight class NEED summit subscription from LoggedInAthlete
  ///
  /// age_group value : 0_19, 20_24, 25_34, 35_44, 45_54, 55_64, 65_69, 70_74, 75_plus
  ///
  /// weight_class value : 0_124, 125_149, 150_164, 165_179, 180_199, 200_224, 225_249, 250_plus,
  ///  0_54, 55_64, 65_74, 75_84, 85_94, 95_104, 105_114, 115_plus
  ///
  /// date_range value : this_year, this_month, this_week, today
  ///
  /// Not clear what is the purpose of context entries
  ///
  Future<SegmentLeaderboard> getLeaderboardBySegmentId(
    int? id, {
    int? nbMaxEntries = 2 ^ 63,
    String? gender = 'M',
    String? ageGroup = '',
    String? weightclass = '',
    bool? following = false,
    int? clubId,
    String? dateRange = '',
  }) async {
    SegmentLeaderboard returnLeaderboard;

    returnLeaderboard = SegmentLeaderboard();
    final _header = globals.createHeader();
    int _pageNumber = 1;
    const int _perPage = 50; // Number of activities retrieved per http request
    bool isRetrieveDone = false;
    int _nbEntries = 0;
    final List<Entries> _listEntries = <Entries>[];

    globals.displayInfo('Entering getLeaderboardBySegmentId');

    final clubIdStr = (clubId != null) ? clubId.toString() : '';

    if (_header.containsKey('88') == false) {
      do {
        final String reqLeaderboard =
            'https://www.strava.com/api/v3/segments/$id/leaderboard?=gender$gender&age_group=$ageGroup&weight_class=$weightclass&following=$following&club_id=$clubIdStr&date_range=$dateRange&context_entries=${'&page=$_pageNumber&per_page=$_perPage'}';

        final rep = await http.get(Uri.parse(reqLeaderboard), headers: _header);

        if (rep.statusCode == 200) {
          globals.displayInfo(rep.statusCode.toString());
          globals.displayInfo('Leaderboard info ${rep.body}');

          final jsonResponse = json.decode(rep.body) as Map<String, dynamic>?;
          if (jsonResponse != null) {
            returnLeaderboard = SegmentLeaderboard.fromJson(jsonResponse);

            // Add entries to the list
            returnLeaderboard.entries?.forEach((ent) {
              if (_nbEntries < nbMaxEntries!) {
                _listEntries.add(ent);
                _nbEntries++;
              }
            });

            globals.displayInfo('Entries ${_listEntries.length}');

            if ((_listEntries.length >= returnLeaderboard.entryCount!) ||
                (_listEntries.length >= nbMaxEntries!)) {
              globals.displayInfo(
                  '----> End of leaderboard   ${returnLeaderboard.entryCount}');
              isRetrieveDone = true;
              returnLeaderboard.entries = _listEntries;
            } else {
              _pageNumber++;
            }
          } else {
            globals.displayInfo('problem in getLeaderboardBySegmentId request');
          }

          returnLeaderboard.fault = globals.errorCheck(rep.statusCode, rep.reasonPhrase);
        }
      } while (!isRetrieveDone);
    } else {
      globals.displayInfo('Token not yet known');
      returnLeaderboard.fault =
          Fault(error.statusTokenNotKnownYet, 'Token not yet known');
    }
    return returnLeaderboard;
  }

  /// starSegment
  ///
  /// scope needed: activity:write
  ///
  /// star : true to star false to unstar
  ///
  Future<DetailedSegment> starSegment(int? id, bool star) async {
    DetailedSegment returnSegment;

    returnSegment = DetailedSegment();
    final _header = globals.createHeader();
    // String toStarred = star ? 'true' : 'false';
    // final _queryParams = {'starred': toStarred};

    globals.displayInfo('Entering starSegment');

    if (_header.containsKey('88') == false) {
      final reqStar = 'https://www.strava.com/api/v3/segments/$id/starred?starred=$star';
      final rep = await http.put(Uri.parse(reqStar), headers: _header);

      // final uri = Uri.https('www.strava.com', path);

      // final rep = await http.put(    uri,   headers: _header,  );
      if (rep.statusCode == 200) {
        globals.displayInfo(rep.statusCode.toString());
        globals.displayInfo('Star segment  info ${rep.body}');
        returnSegment =
            DetailedSegment.fromJson(json.decode(rep.body) as Map<String, dynamic>);
      } else {
        globals.displayInfo('Problem in starSegment request');
      }
      returnSegment.fault = globals.errorCheck(rep.statusCode, rep.reasonPhrase);
    } else {
      globals.displayInfo('Token not yet known');
      returnSegment.fault = Fault(error.statusTokenNotKnownYet, 'Token not yet known');
    }
    return returnSegment;
  }
}
