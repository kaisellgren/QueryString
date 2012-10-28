/*!
 * QueryString
 *
 * Copyright (C) 2012, Kai Sellgren
 * Licensed under the MIT License.
 * http://www.opensource.org/licenses/mit-license.php
 */

library query_string;

import 'dart:uri';

class QueryString {
  /**
   * Parses the given query string into a Map.
   */
  static Map parse(String query) {
    const search = const RegExp('([^&=]+)=?([^&]*)');
    var result = new Map();

    // Get rid off the beginning ? in query strings.
    query = query.substring(1);

    // A custom decoder.
    decode(String s) {
      return decodeUriComponent(s.replaceAll('+', ' '));
    }

    // Go through all the matches and build the result map.
    for (Match match in search.allMatches(query)) {
      result[decode(match.group(1))] = decode(match.group(2));
    }

    return result;
  }
}