QueryString
==

This is a query string parser. It turns those nasty query strings into Dart Maps.

## Examples

```
import 'package:query_string/query_string.dart';

void main() {
  var q = '?page=main&action=front&sid=h985jg9034gj498g859gh495&enc=+Hello%20&empty';
  
  var r = QueryString.parse(q);
  
  print(r['page']); // "main"
  print(r['asdasd']); // null
}
```

## Installation

Until ```pub``` is open to public submissions, you have to specify the path to this Git repository in your pubspec.yaml:

```
dependencies:
  query_string:
  	git: https://github.com/kaisellgren/QueryString.git
```

## License
This library is licensed under MIT.